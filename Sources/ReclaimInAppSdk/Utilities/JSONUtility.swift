import Foundation
struct JSONUtility {
    static func fromString(_ messageBody: Any) -> Any? {
        if  let messageBodyString = messageBody as? String {
            let messageBodyBytes = messageBodyString.data(using: .utf8)
            do {
                let messageBodyJSON = try JSONSerialization.jsonObject(with: messageBodyBytes!)
                return messageBodyJSON
            } catch {
                print("[JSONUtility.fromString] Failed json serialization \(error)")
            }
        } else {
            print("[JSONUtility.fromString] message \(messageBody) of type \(type(of: messageBody)) is not a String");
        }
        return nil
    }
    
    static func toString(_ json: Any) -> String {
        if (json == nil) {return "null"}
        if (json is String) {return json as! String}
        if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: [
            JSONSerialization.WritingOptions.sortedKeys,
            JSONSerialization.WritingOptions.fragmentsAllowed
        ]) {
            return String(data: jsonData, encoding: .utf8) ?? "null"
        }
        return "null"
    }
}
