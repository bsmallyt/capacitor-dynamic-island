import Foundation

@objc public class DynamicIsland: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func greet(_ name: String) -> String {
        return "Hello, \(name)!"
    }
}
