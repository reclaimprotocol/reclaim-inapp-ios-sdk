import Foundation
import SwiftUI

/// Represents session information for a verification attempt.
/// This struct contains the necessary data to identify and validate a verification session.
public struct ReclaimSessionInformation {
    /// The timestamp of the session creation.
    ///
    /// Represented as a string from number of milliseconds since
    /// the "Unix epoch" 1970-01-01T00:00:00Z (UTC).
    ///
    /// This value is independent of the time zone.
    ///
    /// This value is at most
    /// 8,640,000,000,000,000ms (100,000,000 days) from the Unix epoch.
    public let timestamp: String
    
    /// Unique identifier for the verification session
    public let sessionId: String
    
    /// Cryptographic signature to validate the session
    public let signature: String
    
    public init(timestamp: String, sessionId: String, signature: String) {
        self.timestamp = timestamp
        self.sessionId = sessionId
        self.signature = signature
    }
}

/// The main entry point for the Reclaim SDK verification flow.
/// This class provides functionality to initiate and manage the verification process
/// for proving claims about user data through various providers.
public class ReclaimVerification {
    private init() {}
    
    public struct ReclaimSessionIdentity: Sendable {
        public let sessionId: String
        public let providerId: String
        public let appId: String
        let clientSource: String
        let deviceId: String
        
        public init(sessionId: String, providerId: String, appId: String) {
            self.sessionId = sessionId
            self.providerId = providerId
            self.appId = appId
            let settings = SDKSettings()
            self.clientSource = settings.getClientSource(appId: appId)
            self.deviceId = settings.getDeviceLoggingId()
        }
        
        @MainActor static var shared: ReclaimSessionIdentity? = nil
        
        @MainActor public static func setCurrentFromRequest(_ request: ReclaimVerification.Request) {
            switch (request) {
            case .params(let req):
                shared = .init(
                    sessionId: req.session?.sessionId ?? "",
                    providerId: req.providerId,
                    appId: req.appId
                )
                break
            case .url(_):
                // TODO: Get session information from url
                shared = .init(
                    sessionId: "",
                    providerId: "",
                    appId: ""
                )
                break
            }
        }
    }
    
    /// Configuration structure for storing Reclaim app credentials
    private struct ReclaimClientConfiguration: Decodable {
        public let ReclaimAppId, ReclaimAppSecret: String
    }
    
    /// Represents different ways to initiate a verification request
    public enum Request {
        /// A Reclaim verification request with explicit parameters
        public struct Params {
            /// Your Reclaim application ID. If not provided, SDK will look for ReclaimInAppSDKParam.ReclaimAppId in Info.plist
            public var appId: String
            /// The identifier for the Reclaim data provider to use in verification
            public var providerId: String
            /// Your Reclaim application secret. If not provided, SDK will look for ReclaimInAppSDKParam.ReclaimAppSecret in Info.plist
            public var secret: String
            /// Optional session information. If nil, SDK generates new session details
            public var session: ReclaimSessionInformation? = nil
            /// Additional data to associate with the verification attempt
            public var context: String
            /// Key-value pairs for prefilling claim creation variables
            public var parameters: [String: String]
            /// If true, automatically submits proof after generation
            public var autoSubmit: Bool = false
            /// Whether to accept AI-powered data providers
            public var acceptAiProviders: Bool = false
            /// Optional URL to receive verification status updates
            public var webhookUrl: String? = nil
            
            /// Creates a Reclaim Verification Request with explicit app credentials.
            ///
            /// Use this initializer when you want to provide the app credentials programmatically
            /// rather than through Info.plist.
            ///
            /// Example:
            /// ```swift
            /// let request = ReclaimApiVerificationRequest(
            ///     appId: "your-app-id",
            ///     secret: "your-secret",
            ///     providerId: "some-provider-id"
            /// )
            /// ```
            ///
            /// - Parameters:
            ///   - appId: Your Reclaim application ID. If not provided, SDK will look for ReclaimInAppSDKParam.ReclaimAppId in Info.plist
            ///   - secret: Your Reclaim application secret. If not provided, SDK will look for ReclaimInAppSDKParam.ReclaimAppSecret in Info.plist
            ///   - providerId: The identifier for the Reclaim data provider to use in verification
            ///   - session: Optional session information. If nil, SDK generates new session details
            ///   - context: Additional data to associate with the verification attempt
            ///   - parameters: Key-value pairs for prefilling claim creation variables
            ///   - autoSubmit: If true, automatically submits proof after generation
            ///   - acceptAiProviders: Whether to accept AI-powered data providers
            ///   - webhookUrl: Optional URL to receive verification status updates
            public init(
                /// If not provided, sdk will look for an appId from ReclaimInAppSDKParam.ReclaimAppId in Info.plist
                appId: String,
                /// Your Reclaim application's secret. If null, sdk will look for the secret from ReclaimInAppSDKParam.ReclaimAppSecret in Info.plist
                secret: String,
                /// The Reclaim data provider Id that should be used in the Reclaim Verification Process.
                providerId: String,
                /// The session that sdk will use for a verification attempt. If nil, sdk will generate a new session information internally.
                session: ReclaimSessionInformation? = nil,
                /// Additional data that can be associated with a verification attempt and returned in proofs. Defaults to an empty [String].
                context: String = "",
                /// Prefill variables that can be used during the claim creation process.
                parameters: [String : String] = [String:String](),
                /// If true, automatically submits proof after proof is generated from the claim creation process. Otherwise, lets the user submit proof by pressing a submit button when proof is generated.
                autoSubmit: Bool = false,
                acceptAiProviders: Bool = false,
                webhookUrl: String? = nil
            ) {
                self.appId = appId
                self.secret = secret
                self.providerId = providerId
                self.session = session
                self.context = context
                self.parameters = parameters
                self.autoSubmit = autoSubmit
                self.acceptAiProviders = acceptAiProviders
                self.webhookUrl = webhookUrl
            }
            
            /// Creates a Reclaim Verification Request using app credentials from Info.plist.
            ///
            /// This initializer retrieves the app credentials from your Info.plist file.
            /// You must configure your Info.plist with the following structure:
            ///
            /// ```xml
            /// <key>ReclaimInAppSDKParam</key>
            /// <dict>
            ///     <key>ReclaimAppId</key>
            ///     <string>$(RECLAIM_APP_ID)</string>
            ///     <key>ReclaimAppSecret</key>
            ///     <string>$(RECLAIM_APP_SECRET)</string>
            /// </dict>
            /// ```
            ///
            /// Example usage:
            /// ```swift
            /// do {
            ///     let request = try ReclaimApiVerificationRequest(
            ///         providerId: "some-provider-id"
            ///     )
            /// } catch {
            ///     print("Failed to create request: \(error)")
            /// }
            /// ```
            ///
            /// - Parameters:
            ///   - providerId: The identifier for the Reclaim data provider to use in verification
            ///   - session: Optional session information. If nil, SDK generates new session details
            ///   - context: Additional data to associate with the verification attempt
            ///   - parameters: Key-value pairs for prefilling claim creation variables
            ///   - autoSubmit: If true, automatically submits proof after generation
            ///   - acceptAiProviders: Whether to accept AI-powered data providers
            ///   - webhookUrl: Optional URL to receive manual verification status updates
            /// - Throws: ReclaimVerificationError if required credentials are missing from Info.plist
            public init(
                /// The Reclaim data provider Id that should be used in the Reclaim Verification Process.
                providerId: String,
                /// The session that sdk will use for a verification attempt. If nil, sdk will generate a new session information internally.
                session: ReclaimSessionInformation? = nil,
                /// Additional data that can be associated with a verification attempt and returned in proofs. Defaults to an empty [String].
                context: String = "",
                /// Prefill variables that can be used during the claim creation process.
                parameters: [String : String] = [String:String](),
                /// If true, automatically submits proof after proof is generated from the claim creation process. Otherwise, lets the user submit proof by pressing a submit button when proof is generated.
                autoSubmit: Bool = false,
                acceptAiProviders: Bool = false,
                webhookUrl: String? = nil
            ) throws {
                let sdkParam = Bundle.main.infoDictionary?["ReclaimInAppSDKParam"] as? [String : Any]
                if (sdkParam == nil || sdkParam?["ReclaimAppId"] == nil || sdkParam?["ReclaimAppSecret"] == nil) {
                    throw ReclaimVerificationError.failed(
                        sessionId: session?.sessionId ?? "",
                        didSubmitManualVerification: false,
                        reason: "ReclaimInAppSDKParam.ReclaimAppId or ReclaimInAppSDKParam.ReclaimAppSecret are missing in Info.plist. Either provide appId and secret in Info.plist or use ReclaimVerification(appId:secret:) initializer"
                    )
                }
                let appId = sdkParam?["ReclaimAppId"] as! String
                let secret = sdkParam?["ReclaimAppSecret"] as! String
                self.init(
                    appId: appId,
                    secret: secret,
                    providerId: providerId,
                    session: session,
                    context: context,
                    parameters: parameters,
                    autoSubmit: autoSubmit,
                    acceptAiProviders: acceptAiProviders,
                    webhookUrl: webhookUrl
                )
            }
        }
        
        /// Start verification using explicit parameters
        case params(_ params: Params)
        /// Start verification using a pre-configured URL
        case url(_ url: String)
        
        public var maybeSessionId: String? {
            get {
                return switch (self) {
                case .params(let request): request.session?.sessionId ?? ""
                    // TODO: Get Session Id from url
                case .url(_): ""
                }
            }
        }
    }
    
    /// Contains the proof and response data after verification
    public struct Response {
        /// The API response containing verification results and proof details
        /// Proofs are the data that is returned after verification.
        /// If proofs are empty, it means that the verification failed.
        /// You should check the exception field to see if the verification failed due to an error.
        public var sessionId: String
        public var didSubmitManualVerification: Bool
        public var proofs: [[String: Any?]]
    }
    
    public struct VerificationOptions {
        public let canDeleteCookiesBeforeVerificationStarts: Bool
        public let attestorAuthRequestProvider: AttestorAuthRequestProvider?
        
        public init(
            canDeleteCookiesBeforeVerificationStarts: Bool = true,
            attestorAuthRequestProvider: AttestorAuthRequestProvider? = nil
        ) {
            self.canDeleteCookiesBeforeVerificationStarts = canDeleteCookiesBeforeVerificationStarts
            self.attestorAuthRequestProvider = attestorAuthRequestProvider
        }
        
        public protocol AttestorAuthRequestProvider {
            func fetchAttestorAuthenticationRequest(
                reclaimHttpProvider: [AnyHashable?: (any Sendable)?],
                completion: @escaping (Result<String, any Error>) -> Void
            )
        }
    }
    
    @MainActor
    public static func preWarm() {
        let _ = ReclaimFlutterViewService.flutterEngine
    }
    
    /// Initiates the verification process by presenting a full-screen interface.
    ///
    /// This method handles the entire verification flow, including:
    /// - Presenting the user interface for verification
    /// - Managing the verification session
    /// - Processing the verification result
    /// - Returning the proof upon successful completion
    ///
    /// Example usage:
    /// ```swift
    /// do {
    ///     let request = try ReclaimApiVerificationRequest(providerId: "gmail")
    ///     let proof = try await ReclaimVerification.startVerification(.params(request))
    ///     print("Verification successful: \(proof.response)")
    /// } catch {
    ///     print("Verification failed: \(error)")
    /// }
    /// ```
    ///
    /// - Parameter request: The verification request configuration
    /// - Returns: A Result containing the verification result
    /// - Throws: ReclaimVerificationError if verification fails or is cancelled
    ///
    /// - Note: This method will fail to open the verification UI if the user's screen is getting shared.
    @MainActor
    public static func startVerification(_ request: Request) async throws -> Response {
        // Set up consumer identity for this verification session
        ReclaimVerification.ReclaimSessionIdentity.setCurrentFromRequest(request)
        ConsumerLogging.setup()
        
        // Initialize logger for debugging and tracking
        let logger = Logging.get("ReclaimVerification.startVerification")
        
        // Create the view model and UI screen for verification
        let viewModel = ClaimCreationViewModel(request)
        
        logger.log("started initialization")
        
        // Initialize the view model asynchronously
        Task { @MainActor in
            let logger = Logging.get("ReclaimVerification.startVerification.Task")
            logger.log("started viewModel.initialization")
            await viewModel.initialize()
            logger.log("started viewModel.initializated")
        }
        
        // Use continuation to handle the asynchronous UI flow
        return try await withCheckedThrowingContinuation { continuation in
            // Get the current window to present the verification UI
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                // TODO: A known issue where this fails is when the user's screen is getting shared. Find a way to fix this.
                continuation.resume(throwing: ReclaimVerificationError.failed(
                    sessionId: request.maybeSessionId ?? "",
                    didSubmitManualVerification: false,
                    reason: "Could not start verification UI"
                ))
                return
            }
            
            let logger = Logging.get("ReclaimVerification.startVerification.BuildingReclaimUIViewController")
            logger.log("Building Reclaim UIView Controller")
            // Create and configure the hosting controller for the Reclaim view
            let hostingController = ReclaimFlutterViewService.uiViewController
            // Setting up the presentation style and background color
            hostingController.modalPresentationStyle = .fullScreen
            hostingController.view.backgroundColor = .white
            logger.log("Reclaim UIView controller built")
            
            // Set up completion handler to dismiss UI and return result
            viewModel.onCompletion = { [weak hostingController] result in
                Task { @MainActor in
                    let logger = Logging.get("ReclaimVerification.startVerification.call.viewModel.onCompletion")
                    logger.log("ViewModel notifies completion")
                    hostingController?.dismiss(animated: true)
                    hostingController = nil
                    continuation.resume(with: result)
                }
            }
            
            // Present the verification UI
            logger.log("presenting reclaim view")
            window.rootViewController?.present(hostingController, animated: true)
            logger.log("presented reclaim view")
            logger.log("started client webview")
            
            Task { @MainActor in
                let logger = Logging.get("ReclaimVerification.startVerification.Task")
                logger.log("sending view model request")
                await viewModel.sendRequest()
            }
        }
    }
    
    @MainActor
    public static func setOverrides(
        provider: ReclaimOverrides.ProviderInformation? = nil,
        featureOptions: ReclaimOverrides.FeatureOptions? = nil,
        logConsumer: ReclaimOverrides.LogConsumer? = nil,
        sessionManagement: ReclaimOverrides.SessionManagement? = nil,
        appInfo: ReclaimOverrides.ReclaimAppInfo? = nil,
        sessionIdentityUpdateHandler: ReclaimOverrides.SessionIdentityUpdateHandler? = nil,
        capabilityAccessToken: String? = nil
    ) async throws -> Void {
        let binaryMessenger = ReclaimFlutterViewService.flutterEngine.binaryMessenger
        let api = ReclaimModuleApi.init(binaryMessenger: binaryMessenger)
        let providerInformationCallbackHandler: ReclaimOverrides.ProviderInformation.CallbackHandler? = switch (provider) {
            case .callback(callbackHandler: let callbackHandler): callbackHandler;
            default: nil
        }
        
        let hostApi = ReclaimHostOverridesApiImpl.getInstance(binaryMessenger: binaryMessenger)
        if let providerInformationCallbackHandler {
            hostApi.providerInformationCallbackHandler = providerInformationCallbackHandler
        }
        if let logHandler = logConsumer?.logHandler {
            hostApi.logHandler = logHandler
        }
        if let sessionHandler = sessionManagement?.handler {
            hostApi.sessionHandler = sessionHandler
        }
        if let sessionIdentityUpdateHandler {
            hostApi.sessionIdentityUpdateHandler = sessionIdentityUpdateHandler
        }
        
        // Use continuation to handle the asynchronous UI flow
        return try await withCheckedThrowingContinuation { continuation in
            let overrideProvider: ClientProviderInformationOverride? = if let provider {
                switch (provider) {
                case .jsonString(jsonString: let jsonString): .init(
                    providerInformationUrl: nil, providerInformationJsonString: jsonString, canFetchProviderInformationFromHost: false
                )
                case .url(url: let url): .init(
                    providerInformationUrl: url, providerInformationJsonString: nil, canFetchProviderInformationFromHost: false
                )
                case .callback(callbackHandler: _): .init(
                    providerInformationUrl: nil, providerInformationJsonString: nil, canFetchProviderInformationFromHost: true)
                }
            } else {
                nil
            }
            
            api.setOverrides(
                provider: overrideProvider,
                feature: (featureOptions == nil) ? nil : ClientFeatureOverrides(
                    cookiePersist: featureOptions?.cookiePersist,
                    singleReclaimRequest: featureOptions?.singleReclaimRequest,
                    idleTimeThresholdForManualVerificationTrigger: featureOptions?.idleTimeThresholdForManualVerificationTrigger,
                    sessionTimeoutForManualVerificationTrigger: featureOptions?.sessionTimeoutForManualVerificationTrigger,
                    attestorBrowserRpcUrl: featureOptions?.attestorBrowserRpcUrl,
                    isResponseRedactionRegexEscapingEnabled: featureOptions?.isResponseRedactionRegexEscapingEnabled,
                    isAIFlowEnabled: featureOptions?.isAIFlowEnabled
                ),
                logConsumer: (logConsumer == nil) ? nil : ClientLogConsumerOverride(
                    enableLogHandler: logConsumer?.logHandler != nil,
                    canSdkCollectTelemetry: logConsumer?.canSdkCollectTelemetry ?? true,
                    canSdkPrintLogs: logConsumer?.canSdkPrintLogs
                ),
                sessionManagement: (sessionManagement == nil) ? nil : ClientReclaimSessionManagementOverride(
                    // A handler has been provided. We'll not let SDK manage sessions in this case.
                    // Disabling this lets the host manage sessions.
                    enableSdkSessionManagement: false
                ),
                appInfo: (appInfo == nil) ? nil : ClientReclaimAppInfoOverride(
                    appName: appInfo?.appName ?? "",
                    appImageUrl: appInfo?.appImageUrl ?? "",
                    isRecurring: appInfo?.isRecurring ?? false
                ),
                capabilityAccessToken: capabilityAccessToken
            ) { result in
                switch (result) {
                    case .success(): continuation.resume(returning: ())
                    case .failure(let error): continuation.resume(throwing: ReclaimPlatformException(pigeonError: error))
                }
            }
        }
    }
    
    @MainActor
    public static func clearAllOverrides() async throws {
        let binaryMessenger = ReclaimFlutterViewService.flutterEngine.binaryMessenger
        let api = ReclaimModuleApi.init(binaryMessenger: binaryMessenger)
        let hostApi = ReclaimHostOverridesApiImpl.getInstance(binaryMessenger: binaryMessenger)
        return try await withCheckedThrowingContinuation { continuation in
            api.clearAllOverrides { result in
                hostApi.clearOverrides()
                continuation.resume(with: result)
            }
        }
    }
    
    @MainActor
    public static func setVerificationOptions(options: VerificationOptions?) async throws {
        let binaryMessenger = ReclaimFlutterViewService.flutterEngine.binaryMessenger
        let api = ReclaimModuleApi.init(binaryMessenger: binaryMessenger)
        let hostApi = ReclaimHostVerificationApiImpl.getInstance(binaryMessenger: binaryMessenger)
        return try await withCheckedThrowingContinuation { continuation in
            if let options {
                let provider = options.attestorAuthRequestProvider
                hostApi.attestorAuthRequestProvider = provider
                api.setVerificationOptions(options: .init(
                    canDeleteCookiesBeforeVerificationStarts: options.canDeleteCookiesBeforeVerificationStarts,
                    canUseAttestorAuthenticationRequest: provider != nil
                )) { result in
                    continuation.resume(with: result)
                }
            } else {
                api.setVerificationOptions(options: nil) { result in
                    continuation.resume(with: result)
                }
            }
        }
    }
}

/// Errors that can occur during the Reclaim verification process
public enum ReclaimVerificationError: Error {
    /// User explicitly cancelled the verification process
    case cancelled(sessionId: String, didSubmitManualVerification: Bool)
    
    /// Verification UI was dismissed without completion
    case dismissed(sessionId: String, didSubmitManualVerification: Bool)
    
    /// The verification session has expired
    case sessionExpired(sessionId: String, didSubmitManualVerification: Bool)
    
    /// Verification failed with a specific reason
    /// - Parameter reason: Description of why the verification failed
    case failed(sessionId: String, didSubmitManualVerification: Bool, reason: String)
}

@objc(ReclaimPlatformException) final public class ReclaimPlatformException: NSError, @unchecked Sendable {
    let pigeonError: PigeonError
    public let errorCode: String
    public let message: String?
    public let details: Sendable?

    init(pigeonError: PigeonError) {
        self.pigeonError = pigeonError
        self.errorCode = pigeonError.code
        self.message = pigeonError.message
        self.details = pigeonError.details
        super.init(domain: "org.reclaimprotocol.inapp_sdk", code: 1, userInfo: [
            "errorCode": errorCode,
            "message": message ?? "",
            "details": details ?? ""
        ])
    }

    public override var underlyingErrors: [any Error] {
        get {
            return [pigeonError]
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override var localizedDescription: String {
        return "ReclaimPlatformException(code: \(errorCode), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
    }
    
    public override var localizedFailureReason: String {
        return message ?? "<nil>"
    }
}

fileprivate class ReclaimHostOverridesApiImpl: ReclaimHostOverridesApi {
    private static var instance = ReclaimHostOverridesApiImpl()
    
    static func getInstance(
        binaryMessenger: MessagesBinaryMessenger
    ) -> ReclaimHostOverridesApiImpl {
        ReclaimHostOverridesApiSetup.setUp(binaryMessenger: binaryMessenger, api: instance)
        return instance
    }

    var providerInformationCallbackHandler: ReclaimOverrides.ProviderInformation.CallbackHandler? = nil
    var logHandler: ReclaimOverrides.LogConsumer.LogHandler? = nil
    var sessionHandler: ReclaimOverrides.SessionManagement.SessionHandler? = nil
    var sessionIdentityUpdateHandler: ReclaimOverrides.SessionIdentityUpdateHandler? = nil
    
    func clearOverrides() {
        providerInformationCallbackHandler = nil
        logHandler = nil
        sessionHandler = nil
        sessionIdentityUpdateHandler = nil
    }

    func onLogs(logJsonString: String, completion: @escaping (Result<Void, any Error>) -> Void) {
        logHandler?.onLogs(logJsonString: logJsonString)
        completion(.success(()))
    }
    
    func createSession(appId: String, providerId: String, sessionId: String, completion: @escaping (Result<Bool, any Error>) -> Void) {
        sessionHandler?.createSession(appId: appId, providerId: providerId, sessionId: sessionId, completion: completion)
    }
    
    func updateSession(sessionId: String, status: ReclaimSessionStatus, completion: @escaping (Result<Bool, any Error>) -> Void) {
        let mappedStatus: ReclaimOverrides.SessionManagement.SessionStatus = switch (status) {
        case .pROOFGENERATIONFAILED: .PROOF_GENERATION_FAILED
        case .pROOFGENERATIONRETRY: .PROOF_GENERATION_RETRY
        case .pROOFGENERATIONSTARTED: .PROOF_GENERATION_STARTED
        case .pROOFGENERATIONSUCCESS: .PROOF_GENERATION_SUCCESS
        case .pROOFMANUALVERIFICATIONSUBMITTED: .PROOF_MANUAL_VERIFICATION_SUBMITTED
        case .uSERSTARTEDVERIFICATION: .USER_STARTED_VERIFICATION
        case .uSERINITVERIFICATION: .USER_INIT_VERIFICATION
        case .pROOFSUBMITTED: .PROOF_SUBMITTED
        case .pROOFSUBMISSIONFAILED: .PROOF_SUBMISSION_FAILED
        }
        sessionHandler?.updateSession(
            sessionId: sessionId,
            status: mappedStatus,
            completion: completion
        )
    }
    
    func logSession(appId: String, providerId: String, sessionId: String, logType: String, completion: @escaping (Result<Void, any Error>) -> Void) {
        sessionHandler?.logSession(appId: appId, providerId: providerId, sessionId: sessionId, logType: logType)
        completion(.success(()))
    }
    
    func onSessionIdentityUpdate(update: ReclaimSessionIdentityUpdate?, completion: @escaping (Result<Void, any Error>) -> Void) {
        let identity: ReclaimVerification.ReclaimSessionIdentity? = if let update {
            .init(sessionId: update.sessionId, providerId: update.providerId, appId: update.appId)
        } else {
            nil
        }
        
        Task { @MainActor in
            ReclaimVerification.ReclaimSessionIdentity.shared = identity
        }
        
        sessionIdentityUpdateHandler?.onSessionIdentityUpdate(identity: identity)
    }
    
    func fetchProviderInformation(appId: String, providerId: String, sessionId: String, signature: String, timestamp: String, completion: @escaping (Result<String, any Error>) -> Void) {
        providerInformationCallbackHandler?.fetchProviderInformation(
            appId: appId,
            providerId: providerId,
            sessionId: sessionId,
            signature: signature,
            timestamp: timestamp,
            completion: completion
        )
    }
}


fileprivate class ReclaimHostVerificationApiImpl: ReclaimHostVerificationApi {
    private static var instance = ReclaimHostVerificationApiImpl()
    
    static func getInstance(
        binaryMessenger: MessagesBinaryMessenger
    ) -> ReclaimHostVerificationApiImpl {
        ReclaimHostVerificationApiSetup.setUp(binaryMessenger: binaryMessenger, api: instance)
        return instance
    }
    
    var attestorAuthRequestProvider: ReclaimVerification.VerificationOptions.AttestorAuthRequestProvider? = nil
    
    func fetchAttestorAuthenticationRequest(reclaimHttpProvider: [AnyHashable? : (any Sendable)?], completion: @escaping (Result<String, any Error>) -> Void) {
        if let attestorAuthRequestProvider {
            attestorAuthRequestProvider.fetchAttestorAuthenticationRequest(reclaimHttpProvider: reclaimHttpProvider, completion: completion)
        } else {
            completion(.failure(ErrorWithMessage.message(message: "No attestorAuthRequestProvider was provided")))
        }
    }
}

enum ErrorWithMessage: Error {
    case message(message: String)
}
