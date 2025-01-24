import Foundation
import SwiftUI

/// Represents session information for a verification attempt.
/// This struct contains the necessary data to identify and validate a verification session.
public struct ReclaimSessionInformation {
    /// ISO 8601 formatted timestamp when the session was created
    let timestamp: String
    
    /// Unique identifier for the verification session
    let sessionId: String
    
    /// Cryptographic signature to validate the session
    let signature: String
}

/// Request parameters for initiating a Reclaim verification process.
public extension ReclaimApiVerificationRequest {
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
    ///   - hideLanding: When false, shows an introductory page with claims to be proven
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
        /// When false, sdk shows a page with claims that'll be proven and waits for the user to press start before starting verification flow
        hideLanding: Bool = true,
        /// If true, automatically submits proof after proof is generated from the claim creation process. Otherwise, lets the user submit proof by pressing a submit button when proof is generated.
        autoSubmit: Bool = false,
        acceptAiProviders: Bool = false,
        webhookUrl: String? = nil
    ) {
        self.appId = appId
        self.secret = secret
        self.providerId = providerId
        self.signature = session?.signature ?? ""
        self.timestamp = session?.timestamp ?? ""
        self.context = context
        self.sessionId = session?.sessionId ?? ""
        self.parameters = parameters
        self.hideLanding = hideLanding
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
    ///   - hideLanding: When false, shows an introductory page with claims to be proven
    ///   - autoSubmit: If true, automatically submits proof after generation
    ///   - acceptAiProviders: Whether to accept AI-powered data providers
    ///   - webhookUrl: Optional URL to receive verification status updates
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
        hideLanding: Bool = true,
        /// If true, automatically submits proof after proof is generated from the claim creation process. Otherwise, lets the user submit proof by pressing a submit button when proof is generated.
        autoSubmit: Bool = false,
        acceptAiProviders: Bool = false,
        webhookUrl: String? = nil
    ) throws {
        let sdkParam = Bundle.main.infoDictionary?["ReclaimInAppSDKParam"] as? [String : Any]
        if (sdkParam == nil || sdkParam?["ReclaimAppId"] == nil || sdkParam?["ReclaimAppSecret"] == nil) {
            throw ReclaimVerificationError.failed(reason: "ReclaimInAppSDKParam.ReclaimAppId or ReclaimInAppSDKParam.ReclaimAppSecret are missing in Info.plist. Either provide appId and secret in Info.plist or use ReclaimVerification(appId:secret:) initializer")
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
            hideLanding: hideLanding,
            autoSubmit: autoSubmit,
            acceptAiProviders: acceptAiProviders,
            webhookUrl: webhookUrl
        )
    }
}

/// The main entry point for the Reclaim SDK verification flow.
/// This class provides functionality to initiate and manage the verification process
/// for proving claims about user data through various providers.
public class ReclaimVerification {
    private init() {}
    
    /// Configuration structure for storing Reclaim app credentials
    private struct ReclaimClientConfiguration: Decodable {
        public let ReclaimAppId, ReclaimAppSecret: String
    }
    
    /// Represents different ways to initiate a verification request
    public enum Request {
        /// Start verification using explicit parameters
        case params(_ request: ReclaimApiVerificationRequest)
        /// Start verification using a pre-configured URL
        case url(_ url: String)
    }
    
    /// Contains the proof and response data after successful verification
    public struct ClaimCreationProof {
        /// The API response containing verification results and proof details
        public let response: ReclaimApiVerificationResponse
        // Add any other relevant properties here
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
    /// - Returns: A ClaimCreationProof containing the verification result
    /// - Throws: ReclaimVerificationError if verification fails or is cancelled
    @MainActor
    public static func startVerification(_ request: Request) async throws -> ClaimCreationProof {
        // Initialize logger for debugging and tracking
        let logger = Logging.get("ReclaimVerification.startVerification")
        
        // Create the view model and UI screen for verification
        let viewModel = ClaimCreationViewModel(request)
        let claimCreationScreen = ClaimCreationScreen(viewModel: viewModel)
        
        logger.log("started initialization")
        
        // Initialize the view model asynchronously
        Task { @MainActor in
            await viewModel.initialize()
        }
        
        // Use continuation to handle the asynchronous UI flow
        return try await withCheckedThrowingContinuation { continuation in
            // Get the current window to present the verification UI
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                continuation.resume(throwing: ReclaimVerificationError.failed(reason: "Could not open claim creation window"))
                return
            }
            
            // Create and configure the hosting controller for the SwiftUI view
            let hostingController = UIHostingController(rootView: claimCreationScreen)
            hostingController.modalPresentationStyle = .fullScreen
            
            // Set up completion handler to dismiss UI and return result
            viewModel.onCompletion = { [weak hostingController] result in
                Task { @MainActor in
                    hostingController?.dismiss(animated: true)
                    continuation.resume(with: result)
                }
            }
            
            // Present the verification UI
            window.rootViewController?.present(hostingController, animated: true)
            logger.log("started client webview")
        }
    }
}

/// Errors that can occur during the Reclaim verification process
public enum ReclaimVerificationError: Error {
    /// User explicitly cancelled the verification process
    case cancelled
    
    /// Verification UI was dismissed without completion
    case dismissed
    
    /// The verification session has expired
    case sessionExpired
    
    /// Verification failed with a specific reason
    /// - Parameter reason: Description of why the verification failed
    case failed(reason: String)
}
