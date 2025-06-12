import Flutter
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant
import SwiftUI

@MainActor
public class ReclaimFlutterViewService {
  public static func createFlutterEngine() -> FlutterEngine {
    let flutterEngine = FlutterEngine(name: "reclaim_flutter_engine")
    // Runs the default Dart entrypoint with a default Flutter route.
    flutterEngine.run()
    // Connects plugins with iOS platform code to this app.
    GeneratedPluginRegistrant.register(with: flutterEngine)
    return flutterEngine
  }

  public static let flutterEngine =
    ReclaimFlutterViewService.createFlutterEngine()

  public static func buildUIViewController() -> FlutterViewController {
    let flutterEngine = ReclaimFlutterViewService.flutterEngine
    flutterEngine.viewController = nil
    return FlutterViewController(
      engine: flutterEngine,
      nibName: nil,
      bundle: nil
    )
  }

  public static let uiViewController =
    ReclaimFlutterViewService.buildUIViewController()
}

public struct ReclaimFlutterViewControllerRepresentable:
  UIViewControllerRepresentable
{
  public init() {}

  public func makeUIViewController(context: Context) -> some UIViewController {
    return ReclaimFlutterViewService.buildUIViewController()
  }

  public func updateUIViewController(
    _ uiViewController: UIViewControllerType,
    context: Context
  ) {}
}
