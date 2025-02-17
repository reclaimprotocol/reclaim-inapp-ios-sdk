public class ReclaimOverrides {
    public enum ProviderInformation {
        /**
         * Represents a provider information override using url.
         * Provider information as a json is downloaded from the given url.
         */
        case url(url: String)
        /**
         * Represents a provider information override using json string.
         */
        case jsonString(jsonString: String)
    }
    
    public struct FeatureOptions {
        public let cookiePersist: Bool?
        public let singleReclaimRequest: Bool?
        public let idleTimeThresholdForManualVerificationTrigger: Int64?
        public let sessionTimeoutForManualVerificationTrigger: Int64?
        public let attestorBrowserRpcUrl: String?
        public let isResponseRedactionRegexEscapingEnabled: Bool?
        public let isAIFlowEnabled: Bool?
        
        public init(
            cookiePersist: Bool? = nil,
            singleReclaimRequest: Bool? = nil,
            idleTimeThresholdForManualVerificationTrigger: Int64? = nil,
            sessionTimeoutForManualVerificationTrigger: Int64? = nil,
            attestorBrowserRpcUrl: String? = nil,
            isResponseRedactionRegexEscapingEnabled: Bool? = nil,
            isAIFlowEnabled: Bool? = nil
        ) {
            self.cookiePersist = cookiePersist
            self.singleReclaimRequest = singleReclaimRequest
            self.idleTimeThresholdForManualVerificationTrigger = idleTimeThresholdForManualVerificationTrigger
            self.sessionTimeoutForManualVerificationTrigger = sessionTimeoutForManualVerificationTrigger
            self.attestorBrowserRpcUrl = attestorBrowserRpcUrl
            self.isResponseRedactionRegexEscapingEnabled = isResponseRedactionRegexEscapingEnabled
            self.isAIFlowEnabled = isAIFlowEnabled
        }
    }
    
    public struct LogConsumer {
        /**
         * Handler for consuming logs exported from the SDK.
         */
        public let logHandler: LogHandler?
        /**
         * When enabled, logs are sent to reclaim that can be used to help you.
         * Defaults to true.
         */
        public let canSdkCollectTelemetry: Bool
        /**
         * Defaults to enabled when not in release mode.
         */
        public let canSdkPrintLogs: Bool?
        
        public init(
            logHandler: LogHandler? = nil,
            canSdkCollectTelemetry: Bool = true,
            canSdkPrintLogs: Bool? = nil
        ) {
            self.logHandler = logHandler
            self.canSdkCollectTelemetry = canSdkCollectTelemetry
            self.canSdkPrintLogs = canSdkPrintLogs
        }
        
        public protocol LogHandler {
            func onLogs(logJsonString: String)
        }
    }
    
    public struct SessionManagement {
        public let handler: SessionHandler
        
        public init(handler: SessionHandler) {
            self.handler = handler
        }
        
        public protocol SessionHandler {
            func createSession(
                appId: String,
                providerId: String,
                sessionId: String,
                completion: @escaping (Result<Bool, Error>) -> Void
            )
            
            func updateSession(
                sessionId: String,
                status: SessionStatus,
                completion: @escaping (Result<Bool, Error>) -> Void
            )
            
            func logSession(
                appId: String,
                providerId: String,
                sessionId: String,
                logType: String
            )
        }
        
        public enum SessionStatus: Int {
            case USER_STARTED_VERIFICATION = 0
            case USER_INIT_VERIFICATION = 1
            case PROOF_GENERATION_STARTED = 2
            case PROOF_GENERATION_RETRY = 3
            case PROOF_GENERATION_SUCCESS = 4
            case PROOF_GENERATION_FAILED = 5
            case PROOF_SUBMITTED = 6
            case PROOF_SUBMISSION_FAILED = 7
            case PROOF_MANUAL_VERIFICATION_SUBMITTED = 8
            
            public static func fromInt(_ value: Int) -> SessionStatus? {
                return switch value {
                case 0:
                        .USER_STARTED_VERIFICATION
                case 1:
                        .USER_INIT_VERIFICATION
                case 2:
                        .PROOF_GENERATION_STARTED
                case 3:
                        .PROOF_GENERATION_RETRY
                case 4:
                        .PROOF_GENERATION_SUCCESS
                case 5:
                        .PROOF_GENERATION_FAILED
                case 6:
                        .PROOF_SUBMITTED
                case 7:
                        .PROOF_SUBMISSION_FAILED
                case 8:
                        .PROOF_MANUAL_VERIFICATION_SUBMITTED
                default:
                    nil
                }
            }
        }
    }
    
    public struct ReclaimAppInfo {
        public let appName: String
        public let appImageUrl: String
        public let isRecurring: Bool
        
        public init(appName: String, appImageUrl: String, isRecurring: Bool = false) {
            self.appName = appName
            self.appImageUrl = appImageUrl
            self.isRecurring = isRecurring
        }
    }
}
