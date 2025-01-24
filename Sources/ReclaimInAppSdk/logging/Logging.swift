import Foundation
import Combine

private let defaultLevel = if isDebugMode() { Logging.Level.ALL } else { Logging.Level.INFO } ;

public class Logging {
    public let publisher = LoggingPublisher()
    public let levelChangePublisher = LevelChangePublisher()
    
    let parent: Logging?
    
    let name: String
    
    @MainActor static var _loggers = [String: Logging]()
    
    @MainActor public static func get(_ name: String = "") -> Logging {
        if let entry = _loggers[name] {
            return entry
        } else {
            let l = try! Logging.getNamed(name)
            _loggers[name] = l
            return l
        }
    }
    
    @MainActor private static func getNamed(_ name: String) throws -> Logging {
        if (name.hasPrefix(".")) {
            throw LoggingError.ArgumentError(message: "name shouldn't start with a '.'")
        }
        if (name.hasSuffix(".")) {
            throw LoggingError.ArgumentError(message: "name shouldn't end with a '.'")
        }
        let dot = name.lastIndex(of: ".")
        var parent: Logging? = nil
        var thisName: String = ""
        if let d = dot {
            parent = Logging.get(name.substring(to: d))
            let dotIndex = d.utf16Offset(in: name)
            thisName = String(name.suffix(from: String.Index(utf16Offset: dotIndex + 1, in: name)))
        } else {
            if (!name.isEmpty) {
                parent = Logging.get()
            }
            thisName = name
        }
        return .init(name: thisName, parent: parent, children: [:])
    }
    
    private var _children: [String: Logging]
    let children: [String: Logging]
    
    private init(
        name: String,
        parent: Logging?,
        children: [String: Logging]
    ) {
        self.name = name
        self.parent = parent
        self._children = children
        self.children = children
        if let p = parent {
            p._children[name] = self
        }
    }
    
    var recordStackTraceAtLevel: Logging.Level = .OFF;
    
    private var _level: Level? = nil
    
    public func getLevel() -> Level {
        if let p = parent {
            return _level ?? p.getLevel()
        }
        return _level ?? defaultLevel
    }
    
    enum LoggingError: Error {
        case UnsupportedError
        case ArgumentError(message: String)
    }
    
    public func setLevel(_ value: Level?) throws {
        if (parent == nil && value == nil) {
            throw LoggingError.UnsupportedError
        }
        let isLevelChanged = _level != value
        if isLevelChanged {
            _level = value
            levelChangePublisher.publish(value)
        }
    }
    
    func isLoggable(_ value: Level) -> Bool {
        return value >= getLevel()
    }
    
    public func getFullName() -> String {
        if let p = parent {
            if !p.name.isEmpty {
                return "\(p.getFullName()).\(name)"
            }
        }
        return name
    }
    
    @MainActor public func child(_ name: String) -> Logging {
        return Logging.get("\(getFullName()).\(name)")
    }
    
    @MainActor public func log(
        _ message: Any?,
        level: Level = .FINE,
        error: Error? = nil,
        stackTrace: [String]? = nil
    ) {
        guard isLoggable(level) else { return }
        var stackTrace = stackTrace
        var msg: String = ""
        if let m = message as? String {
            msg = m
        } else if let m = message as? Codable {
            let encoder = JSONEncoder()
            do {
                let data = try encoder.encode(m)
                let dataJson = try JSONSerialization.jsonObject(with: data)
                msg = JSONUtility.toString(dataJson)
            } catch {
                msg = "\(m)"
            }
        } else {
            msg = "\(message)"
        }
        if (stackTrace == nil && level >= recordStackTraceAtLevel) {
            stackTrace = Thread.callStackSymbols
        }
        
        let record = LogRecord(
            level: level,
            message: msg,
            loggerName: getFullName(),
            time: Date(),
            error: error,
            stackTrace: stackTrace
        )
        
        if let p = parent {
            var target: Logging? = self
            while let t = target {
                t.publisher.publish(record)
                target = t.parent
            }
        } else {
            publisher.publish(record)
        }
    }
    
    public struct LogRecord: Sendable {
        let level: Level
        let message: String
        let loggerName: String
        let time: Date
        let sequenceNumber: Int
        let error: Error?
        let stackTrace: [String]?
        
        @MainActor init(level: Level, message: String, loggerName: String, time: Date, error: Error?, stackTrace: [String]?) {
            self.level = level
            self.message = message
            self.loggerName = loggerName
            self.time = time
            self.sequenceNumber = {
                let next = LogRecord._nextNumber
                LogRecord._nextNumber += 1
                return next
            }()
            self.error = error
            self.stackTrace = stackTrace
        }
        
        @MainActor private static var _nextNumber = 0
    }
    
    public struct LoggingPublisher: Publisher {
        public typealias Output = LogRecord
        public typealias Failure = Never
        
        private let passThroughSubject = PassthroughSubject<Output, Failure>()
        
        public func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
            passThroughSubject.receive(subscriber: subscriber)
        }
        
        func publish(_ log: LogRecord) {
            passThroughSubject.send(log)
        }
    }
    
    public struct LevelChangePublisher: Publisher {
        public typealias Output = Level?
        public typealias Failure = Never
        
        private let passThroughSubject = PassthroughSubject<Output, Failure>()
        
        public func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
            passThroughSubject.receive(subscriber: subscriber)
        }
        
        func publish(_ level: Level?) {
            passThroughSubject.send(level)
        }
    }
    
    public struct Level: Comparable, Sendable {
        public let name: String
        public let value: Int
        
        public init(_ name: String, _ value: Int) {
            self.name = name
            self.value = value
        }
        
        public static func < (lhs: Logging.Level, rhs: Logging.Level) -> Bool {
            return lhs.value < rhs.value
        }
        
        public static func == (lhs: Logging.Level, rhs: Logging.Level) -> Bool {
            return lhs.value == rhs.value
        }
        
        /// Special key to turn on logging for all levels ([value] = 0).
        public static let ALL = Level("ALL", 0);
        
        /// Special key to turn off all logging ([value] = 2000).
        public static let OFF = Level("OFF", 2000);
        
        /// Key for highly detailed tracing ([value] = 300).
        public static let FINEST = Level("FINEST", 300);
        
        /// Key for fairly detailed tracing ([value] = 400).
        public static let FINER = Level("FINER", 400);
        
        /// Key for tracing information ([value] = 500).
        public static let FINE = Level("FINE", 500);
        
        /// Key for static configuration messages ([value] = 700).
        public static let CONFIG = Level("CONFIG", 700);
        
        /// Key for informational messages ([value] = 800).
        public static let INFO = Level("INFO", 800);
        
        /// Key for potential problems ([value] = 900).
        public static let WARNING = Level("WARNING", 900);
        
        /// Key for serious failures ([value] = 1000).
        public static let SEVERE = Level("SEVERE", 1000);
        
        /// Key for extra debugging loudness ([value] = 1200).
        public static let SHOUT = Level("SHOUT", 1200);
        
        public static let LEVELS: [Level] = [
            ALL,
            FINEST,
            FINER,
            FINE,
            CONFIG,
            INFO,
            WARNING,
            SEVERE,
            SHOUT,
            OFF
        ];
    }
}
