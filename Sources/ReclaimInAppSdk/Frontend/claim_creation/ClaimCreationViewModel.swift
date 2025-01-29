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
    
    var onCompletion: ((Result<ReclaimVerification.Result, ReclaimVerificationError>) -> Void)?
    
    func complete(with result: Result<ReclaimVerification.Result, ReclaimVerificationError>) {
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
            complete(with: .failure(.failed(reason: "Failed to fetch provider")))
        }
    }
    
    @MainActor func onResponse(result: Result<ReclaimApiVerificationResponse, PigeonError>) {
        let logger = Logging.get("ReclaimVerification.startVerification.Task")
        switch (result) {
        case .success(let response) :
            if let exception = response.exception {
                logger.log("Exception: \(exception.type)\n\(exception.message)\n\(exception.stackTraceAsString)")
                
                switch (exception.type) {
                case .verificationCancelled:
                    self.complete(with: .failure(.cancelled))
                case .verificationDismissed:
                    self.complete(with: .failure(.dismissed))
                case .sessionExpired:
                    self.complete(with: .failure(.sessionExpired))
                default:
                    self.complete(with: .failure(.failed(reason: exception.message)))
                }
                
            } else {
                self.complete(with: .success(.init(response: response)))
            }
        case .failure(let error):
            let logger = Logging.get("ReclaimVerification.startVerification.Task")
            logger.log("Failure: \(error)")
            self.complete(with: .failure(.failed(reason: error.message ?? "Unknown error")))
        }
    }
    
    @MainActor
    func sendRequest() async {
        switch (request) {
        case .params(let request):
            moduleApi!.startVerification(request: request, completion: onResponse)
        case .url(let url):
            moduleApi!.startVerificationFromUrl(url: url, completion: onResponse)
        }
    }
}
