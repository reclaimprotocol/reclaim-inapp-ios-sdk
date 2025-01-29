import Foundation

class SDKSettings {
    func getDeviceLoggingId() -> String {
        if let savedDeviceId = SDKSettingsStore.deviceId.getValue() {
            return savedDeviceId
        }
        let deviceId = UUID().uuidString
        SDKSettingsStore.deviceId.setValue(deviceId)
        return deviceId
    }
    
    func getClientSource(appId: String) -> String {
        let clientAppInfo = Util.getClientAppInfo()
        if Util.isReclaimApp() {
            return "flutter-app:\(clientAppInfo)";
        }
        let sdkVersion = Util.getReclaimSdkVersion()
        return "flutter-sdk:v\(sdkVersion)_\(appId)_\(clientAppInfo)"
    }
    
    fileprivate class Util {
        static func getClientAppVersion() -> String {
            let bundleVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
            let buildNumber = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""
            return "v\(bundleVersion)+\(buildNumber)"
        }
        
        static func getClientAppInfo() -> String {
            let bundleIdentifier = Bundle.main.bundleIdentifier ?? ""
            
            return "\(getClientAppVersion())(ios,\(bundleIdentifier))"
        }
        
        static func isReclaimApp() -> Bool {
            let bundleIdentifier = Bundle.main.bundleIdentifier ?? ""
            return switch (bundleIdentifier.lowercased()) {
                case "org.reclaimprotocol.app","org.reclaimprotocol.app.clip": true
            default: false
            }
        }
        
        static func getReclaimSdkVersion() -> String {
            do {
                var versionText = try fetchPackageResource("ReclaimInAppSdk", "version")
                return versionText.trimmingCharacters(in: .whitespacesAndNewlines)
            } catch {
                if (isDebugMode()) {
                    Task { @MainActor in
                        let logger = Logging.get("SDKSettings.Util")
                        logger.log("getReclaimSdkVersion error \(error)", level: .WARNING)
                    }
                }
                return "-"
            }
            
        }
    }
}
