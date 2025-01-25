import Flutter
import SwiftUI
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant

func createFlutterEngine() -> FlutterEngine {
    let flutterEngine = FlutterEngine(name: "reclaim_flutter_engine")
    // Runs the default Dart entrypoint with a default Flutter route.
    flutterEngine.run()
    // Connects plugins with iOS platform code to this app.
    GeneratedPluginRegistrant.register(with: flutterEngine);
    return flutterEngine
}

struct FlutterViewControllerRepresentable: UIViewControllerRepresentable {
    init() {}

    static let flutterEngine = createFlutterEngine()
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return FlutterViewController(
            engine: FlutterViewControllerRepresentable.flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
