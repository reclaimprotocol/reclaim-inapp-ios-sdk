import Foundation
import Combine

class ClaimCreationViewModel: ObservableObject {
    let request: ReclaimVerification.Request
    
    init(_ request: ReclaimVerification.Request) {
        self.request = request
    }
    
    enum InitializationState {
        case uninitialized
        case loading
        case ready
        case failed(Error)
        
        func isLoading() -> Bool {
            switch self {
            case .loading, .uninitialized: return true
            default: return false
            }
        }
    }
    
    @Published var initializationState: InitializationState = .uninitialized
    
    var onCompletion: ((Result<ReclaimVerification.Response, ReclaimVerificationError>) -> Void)?
    
    func complete(with result: Result<ReclaimVerification.Response, ReclaimVerificationError>) {
        onCompletion?(result)
    }
    
    private var moduleApi: ReclaimModuleApi?
    
    @MainActor func initialize() async {
        switch (initializationState) {
        case .uninitialized:
            break;
        default:
            return
        }
        initializationState = .loading
        let logger = Logging.get("ReclaimVerification.startVerification.Task")
        do {
            logger.log("starting")
            Task { @MainActor in
                logger.log("starting main actor")
            }
            DispatchQueue.main.async {
                logger.log("starting main async")
            }
            let binaryMessenger = ReclaimFlutterViewService.flutterEngine.binaryMessenger
            let api = ReclaimModuleApi.init(binaryMessenger: binaryMessenger)
            moduleApi = api
            initializationState = .ready
        } catch (let error) {
            logger.log("Failed to fetch provider \(error)")
            initializationState = .failed(error)
            complete(with: .failure(.failed(
                sessionId: request.maybeSessionId ?? "",
                didSubmitManualVerification: false,
                reason: "Failed to fetch provider"
            )))
        }
    }
    
    @MainActor func onResponse(result: Result<ReclaimApiVerificationResponse, PigeonError>) {
        let logger = Logging.get("ReclaimVerification.startVerification.Task")
        switch (result) {
        case .success(let response):
            if let exception = response.exception {
                logger.log("Exception: \(exception.type)\n\(exception.message)\n\(exception.stackTraceAsString)")

                let returnedError: ReclaimVerificationError = switch (exception.type) {
                    case .verificationCancelled: .cancelled(
                        sessionId: response.sessionId,
                        didSubmitManualVerification: response.didSubmitManualVerification
                    )
                    case .verificationDismissed: .dismissed(
                        sessionId: response.sessionId,
                        didSubmitManualVerification: response.didSubmitManualVerification
                    )
                    case .sessionExpired: .sessionExpired(
                        sessionId: response.sessionId,
                        didSubmitManualVerification: response.didSubmitManualVerification
                    )
                    default: .failed(
                        sessionId: response.sessionId,
                        didSubmitManualVerification: response.didSubmitManualVerification,
                        reason: exception.message
                    )
                }
                self.complete(with: .failure(returnedError))
            } else {
                self.complete(
                    with: .success(
                        .init(
                            sessionId: response.sessionId,
                            didSubmitManualVerification: response.didSubmitManualVerification,
                            proofs: response.proofs
                        )
                    )
                )
            }
        case .failure(let error):
            let logger = Logging.get("ReclaimVerification.startVerification.Task")
            logger.log("Failure: \(error)")
            self.complete(with: .failure(.failed(
                sessionId: request.maybeSessionId ?? "",
                didSubmitManualVerification: false,
                reason: error.message ?? "Unknown error"
            )))
        }
    }
    
    @MainActor
    func sendRequest() async {
        switch (request) {
        case .params(let request):
            moduleApi!.startVerification(
                request: .init(
                    appId: request.appId,
                    providerId: request.providerId,
                    secret: request.secret,
                    signature: request.signature,
                    timestamp: request.timestamp,
                    context: request.context,
                    sessionId: request.sessionId,
                    parameters: request.parameters,
                    hideLanding: request.hideLanding,
                    autoSubmit: request.autoSubmit,
                    acceptAiProviders: request.acceptAiProviders,
                    webhookUrl: request.webhookUrl
                ),
                completion: onResponse
            )
        case .url(let url):
            moduleApi!.startVerificationFromUrl(url: url, completion: onResponse)
        }
    }
}
