import Flutter
import UIKit
import Network

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    if let controller = window?.rootViewController as? FlutterViewController {
      let channel = FlutterMethodChannel(name: "com.example.my_flutter_login/printer", binaryMessenger: controller.binaryMessenger)
      channel.setMethodCallHandler { [weak self] call, result in
        if call.method == "printText" {
          if let args = call.arguments as? [String: Any],
             let text = args["text"] as? String,
             let ip = args["ip"] as? String,
             let port = args["port"] as? Int {
            self?.printText(ip: ip, port: port, text: text, result: result)
          } else {
            result(false)
          }
        } else {
          result(FlutterMethodNotImplemented)
        }
      }
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func printText(ip: String, port: Int, text: String, result: FlutterResult) {
    let connection = NWConnection(host: NWEndpoint.Host(ip), port: NWEndpoint.Port(integerLiteral: UInt16(port)), using: .tcp)
    let queue = DispatchQueue(label: "printer.connection")
    connection.stateUpdateHandler = { state in
      switch state {
      case .ready:
        let data = text.data(using: .utf8) ?? Data(text.utf8)
        connection.send(content: data, completion: .contentProcessed { error in
          connection.cancel()
          if error == nil {
            result(true)
          } else {
            result(false)
          }
        })
      case .failed(_):
        connection.cancel()
        result(false)
      default:
        break
      }
    }
    connection.start(queue: queue)
  }
}
