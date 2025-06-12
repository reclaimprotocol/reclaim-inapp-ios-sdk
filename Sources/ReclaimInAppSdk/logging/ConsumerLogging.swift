import Combine
import Foundation

@MainActor public enum ConsumerLogging {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss aa"
        return formatter
    }()

    private static func onDebugLogsListener(_ record: Logging.LogRecord) {
        let formattedTime = dateFormatter.string(from: record.time)
        let label =
            "\(formattedTime) \(record.level.name) \(record.loggerName) (\(record.sequenceNumber))"
        let message = record.message
        print("\(label) \(message)")
        let error = record.error
        if let e = error {
            print("\(label) [Error] \(e)")
        }
        if record.level >= Logging.Level.WARNING, let s = record.stackTrace {
            print(s.joined(separator: "\n"))
        }
    }

    @MainActor private static var buffer = [Logging.LogRecord]()

    static private var consumerCancellables: Set<AnyCancellable> = []

    static private var isSetupComplete = false

    fileprivate static var flushLogsTimer: Task<Void, Never>?

    fileprivate static func teardownFlushLogsTimer() {
        flushLogsTimer?.cancel()
        flushLogsTimer = nil
    }

    fileprivate static func sendLogEntries(
        _ logs: [Logging.LogRecord],
        _ identity: ReclaimVerification.ReclaimSessionIdentity
    ) async throws {
        let logEntries: [[String: Any]] = logs.map { e in
            return e.toJsonMap(identity: identity)
        }
        let body: [String: Any] = [
            "logs": logEntries,
            "source": identity.clientSource,
            "deviceId": identity.deviceId,
        ]
        var request = URLRequest(
            url: URL(
                string:
                    "https://logs.reclaimprotocol.org/api/business-logs/logDump"
            )!
        )
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONSerialization.data(
            withJSONObject: body,
            options: []
        )
        let _ = try await URLSession.shared.data(for: request)
    }

    @MainActor fileprivate static func sendAndFlushLogsToRemote() async {
        let identity = ReclaimVerification.ReclaimSessionIdentity.shared
        guard let identity else { return }
        if buffer.isEmpty { return }
        let batch = buffer
        buffer = [Logging.LogRecord]()
        do {
            try await sendLogEntries(batch, identity)
        } catch {
            if isDebugMode() {
                print("Failed to send logs: \(error)")
            }
            // re-insert logs that we weren't able to send
            buffer.insert(contentsOf: batch, at: 0)
        }
    }

    @MainActor public static func setup() {
        if isSetupComplete { return }
        isSetupComplete = true

        let root = Logging.get()
        root.publisher.sink { record in
            if isDebugMode() {
                onDebugLogsListener(record)
            }
            buffer.append(record)

        }
        .store(in: &consumerCancellables)

        // Cancel existing timer if any
        teardownFlushLogsTimer()

        // TODO: Uncomment this when we could reliably identify sender of logs
        // Create new periodic task for flushing logs
        // flushLogsTimer = Task {
        //     while !Task.isCancelled {
        //         Task { @MainActor in
        //             await ConsumerLogging.sendAndFlushLogsToRemote()
        //         }
        //         try? await Task.sleep(nanoseconds: 5_000_000_000) // 5 seconds
        //     }
        // }
    }
}
