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
            return "app:swift:\(clientAppInfo)"
        }
        let sdkVersion = Util.getReclaimSdkVersion()
        return "sdk:swift:v\(sdkVersion)_\(appId)_\(clientAppInfo)"
    }

    fileprivate class Util {
        static func getClientAppVersion() -> String {
            let bundleVersion =
                Bundle.main.object(
                    forInfoDictionaryKey: "CFBundleShortVersionString"
                ) as? String ?? ""
            let buildNumber =
                Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")
                as? String ?? ""
            return "v\(bundleVersion)+\(buildNumber)"
        }

        static func getClientAppInfo() -> String {
            let bundleIdentifier = Bundle.main.bundleIdentifier ?? ""

            return "\(getClientAppVersion())(ios,\(bundleIdentifier))"
        }

        static func isReclaimApp() -> Bool {
            let bundleIdentifier = Bundle.main.bundleIdentifier ?? ""
            return switch bundleIdentifier.lowercased() {
            case "org.reclaimprotocol.app": true
            case "org.reclaimprotocol.app.clip": true
            default: false
            }
        }

        static func getReclaimSdkVersion() -> String {
            do {
                let versionText = try fetchPackageResource(
                    "InAppSdk",
                    "version"
                )
                return versionText.trimmingCharacters(
                    in: .whitespacesAndNewlines
                )
            } catch {
                if isDebugMode() {
                    Task { @MainActor in
                        let logger = Logging.get("SDKSettings.Util")
                        logger.log(
                            "getReclaimSdkVersion error \(error)",
                            level: .WARNING
                        )
                    }
                }
                return "-"
            }

        }
    }
}
