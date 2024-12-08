import Foundation

@objc public class XtremePush: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
