import Foundation

enum SDKSettingsStore: String {
    case deviceId = "_DEVICE_LOGGING_ID"
}

extension SDKSettingsStore {
    func getValue() -> String? {
        let key = self.rawValue
        return UserDefaults.standard.string(forKey: key)
    }

    func setValue(_ value: String) {
        let key = self.rawValue
        UserDefaults.standard.set(value, forKey: key)
    }
}