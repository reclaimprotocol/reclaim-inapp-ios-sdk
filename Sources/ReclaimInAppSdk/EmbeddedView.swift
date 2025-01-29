import Flutter
import SwiftUI
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant

@MainActor
class ReclaimFlutterViewService {
    static func createFlutterEngine() -> FlutterEngine {
        let flutterEngine = FlutterEngine(name: "reclaim_flutter_engine")
        // Runs the default Dart entrypoint with a default Flutter route.
        flutterEngine.run()
        // Connects plugins with iOS platform code to this app.
        GeneratedPluginRegistrant.register(with: flutterEngine);
        return flutterEngine
    }
    
    static let flutterEngine = ReclaimFlutterViewService.createFlutterEngine()
    
    static func buildUIViewController() -> FlutterViewController {
        let flutterEngine = ReclaimFlutterViewService.flutterEngine
        flutterEngine.viewController = nil
        return FlutterViewController(
            engine: flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    static let uiViewController = ReclaimFlutterViewService.buildUIViewController()
}

struct ReclaimFlutterViewControllerRepresentable: UIViewControllerRepresentable {
    init() {}

    func makeUIViewController(context: Context) -> some UIViewController {
        return ReclaimFlutterViewService.buildUIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
