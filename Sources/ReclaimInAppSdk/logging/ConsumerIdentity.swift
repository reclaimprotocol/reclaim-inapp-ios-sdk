struct ConsumerIdentity {
    public let sessionId: String
    public let providerId: String
    public let appId: String
    public let clientSource: String
    public let deviceId: String
    
    init(sessionId: String, providerId: String, appId: String) {
        self.sessionId = sessionId
        self.providerId = providerId
        self.appId = appId
        
        let settings = SDKSettings()
        self.clientSource = settings.getClientSource(appId: appId)
        self.deviceId = settings.getDeviceLoggingId()
    }
    
    @MainActor public static var latest: ConsumerIdentity?
    
    @MainActor public static func setCurrentFromRequest(_ request: ReclaimVerification.Request) {
        switch (request) {
        case .params(let req):
            latest = try? .init(
                sessionId: req.sessionId ?? "",
                providerId: req.providerId,
                appId: req.appId
            )
            break
        case .url(let url):
            latest = try? .init(
                sessionId: "",
                providerId: "",
                appId: ""
            )
            break
        }
        
    }
}
