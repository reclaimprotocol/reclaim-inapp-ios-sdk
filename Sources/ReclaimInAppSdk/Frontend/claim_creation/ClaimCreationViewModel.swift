import Combine
import Foundation

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

  var onCompletion:
    (
      (Result<ReclaimVerification.Response, ReclaimVerificationError>) ->
        Void
    )?

  func complete(
    with result: Result<
      ReclaimVerification.Response, ReclaimVerificationError
    >
  ) {
    onCompletion?(result)
  }

  private var moduleApi: ReclaimModuleApi?

  @MainActor func initialize() async {
    switch initializationState {
    case .uninitialized:
      break
    default:
      return
    }
    initializationState = .loading
    let logger = Logging.get("ReclaimVerification.startVerification.Task")
    logger.log("starting")
    Task { @MainActor in
      logger.log("starting main actor")
    }
    DispatchQueue.main.async {
      logger.log("starting main async")
    }
    let binaryMessenger = ReclaimFlutterViewService.flutterEngine
      .binaryMessenger
    let api = ReclaimModuleApi.init(binaryMessenger: binaryMessenger)
    moduleApi = api
    initializationState = .ready
  }

  @MainActor func onResponse(
    result: Result<ReclaimApiVerificationResponse, PigeonError>
  ) {
    let logger = Logging.get("ReclaimVerification.startVerification.Task")
    switch result {
    case .success(let response):
      if let exception = response.exception {
        logger.log(
          "Exception: \(exception.type)\n\(exception.message)\n\(exception.stackTraceAsString)"
        )

        var returnedError: ReclaimVerificationError? = nil
        switch exception.type {
        case .verificationCancelled:
          returnedError = .cancelled(
            sessionId: response.sessionId,
            didSubmitManualVerification: response
              .didSubmitManualVerification
          )
        case .verificationDismissed:
          returnedError = .dismissed(
            sessionId: response.sessionId,
            didSubmitManualVerification: response
              .didSubmitManualVerification
          )
        case .sessionExpired:
          returnedError = .sessionExpired(
            sessionId: response.sessionId,
            didSubmitManualVerification: response
              .didSubmitManualVerification
          )
        default:
          returnedError = .failed(
            sessionId: response.sessionId,
            didSubmitManualVerification: response
              .didSubmitManualVerification,
            reason: exception.message
          )
        }
        self.complete(with: .failure(returnedError!))
      } else {
        self.complete(
          with: .success(
            .init(
              sessionId: response.sessionId,
              didSubmitManualVerification: response
                .didSubmitManualVerification,
              proofs: response.proofs
            )
          )
        )
      }
    case .failure(let error):
      let logger = Logging.get(
        "ReclaimVerification.startVerification.Task"
      )
      logger.log("Failure: \(error)")
      self.complete(
        with: .failure(
          .failed(
            sessionId: request.maybeSessionId ?? "",
            didSubmitManualVerification: false,
            reason: error.message ?? "Unknown error"
          )
        )
      )
    }
  }

  @MainActor
  func sendRequest() async {
    switch request {
    case .params(let request):
      moduleApi!.startVerification(
        request: .init(
          appId: request.appId,
          providerId: request.providerId,
          secret: request.secret,
          signature: request.session?.signature ?? "",
          timestamp: request.session?.timestamp ?? "",
          context: request.context,
          sessionId: request.session?.sessionId ?? "",
          parameters: request.parameters,
          providerVersion: ProviderVersionApi(
            versionExpression: request.providerVersion
              .versionExpression,
            resolvedVersion: request.providerVersion.resolvedVersion
          )
        ),
        completion: onResponse
      )
    case .url(let url):
      moduleApi!.startVerificationFromUrl(
        url: url,
        completion: onResponse
      )
    case .json(let template):
      moduleApi!.startVerificationFromJson(
        template: template,
        completion: onResponse
      )
    }
  }
}
