import Flutter
import UIKit
import GD.Runtime

public class SwiftFlutterPluginBbdApplicationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin_bbd_application", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPluginBbdApplicationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
    case "getApplicationConfig":
        result(GDiOS.sharedInstance().getApplicationConfig())
        break;
    case "getVersion":
        result(GDiOS.sharedInstance().getVersion())
        break;
    case "showPreferenceUI":
        GDiOS.sharedInstance().showPreferenceUI(nil)
        break;
    default:
        result(FlutterMethodNotImplemented)
        break;
    }
  }
}
