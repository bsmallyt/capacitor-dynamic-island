import Foundation

@objc public class DynamicIsland: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func greet(_ name: String) -> String {
        return "Hello, \(name)!"
    }

    @objc public func alert(_ message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        DispatchQueue.main.async {
            if let viewController = UIApplication.shared.keyWindow?.rootViewController {
                viewController.present(alert, animated: true, completion: nil)
            }
        }
    }
}
