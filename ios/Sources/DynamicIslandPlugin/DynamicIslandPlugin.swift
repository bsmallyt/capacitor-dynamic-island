import Foundation
import Capacitor
import ActivityKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DynamicIslandPlugin)
public class DynamicIslandPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "DynamicIslandPlugin"
    public let jsName = "DynamicIsland"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "greet", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = DynamicIsland()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func greet(_ call: CAPPluginCall) {
        let name = call.getString("name") ?? "World"
        call.resolve([
            "greeting": implementation.greet(name)
        ])
    }
}
