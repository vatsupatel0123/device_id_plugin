import Flutter
import UIKit

public class DeviceIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "device_id_plugin", binaryMessenger: registrar.messenger())
    let instance = DeviceIdPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getAndroidId" {
      let id = UIDevice.current.identifierForVendor?.uuidString
      result(id)
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
