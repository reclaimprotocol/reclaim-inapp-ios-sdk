import Foundation

public struct JSONUtility {
    public static func fromString(_ messageBody: Any) -> Any? {
        if let messageBodyString = messageBody as? String {
            let messageBodyBytes = messageBodyString.data(using: .utf8)
            do {
                let messageBodyJSON = try JSONSerialization.jsonObject(
                    with: messageBodyBytes!
                )
                return messageBodyJSON
            } catch {
                Task { @MainActor in
                    let logger = Logging.get("JSONUtility.fromString")
                    logger.log(
                        "[JSONUtility.fromString] Failed json serialization \(error)"
                    )
                }
            }
        } else {
            let msg = "\(messageBody)"
            let msgType = "\(type(of: messageBody))"
            Task { @MainActor in
                let logger = Logging.get("JSONUtility.fromString")
                logger.log(
                    "[JSONUtility.fromString] message \(msg) of type \(msgType) is not a String"
                )
            }

        }
        return nil
    }

    public static func toString(_ json: Any?) -> String {
        if let json {
            if json is String { return json as! String }
            if let jsonData = try? JSONSerialization.data(
                withJSONObject: json,
                options: [
                    JSONSerialization.WritingOptions.sortedKeys,
                    JSONSerialization.WritingOptions.fragmentsAllowed,
                ]
            ) {
                return String(data: jsonData, encoding: .utf8) ?? "null"
            }
        }

        return "null"
    }
}
