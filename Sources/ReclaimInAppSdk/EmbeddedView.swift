import Flutter
import SwiftUI
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant

public func createFlutterEngine() -> FlutterEngine {
    let flutterEngine = FlutterEngine(name: "reclaim_flutter_engine")
    // Runs the default Dart entrypoint with a default Flutter route.
    flutterEngine.run()
    // Connects plugins with iOS platform code to this app.
    GeneratedPluginRegistrant.register(with: flutterEngine);
    return flutterEngine
}

public struct FlutterViewControllerRepresentable: UIViewControllerRepresentable {
    public init() {}

    public static let flutterEngine = createFlutterEngine()
    
    public func makeUIViewController(context: Context) -> some UIViewController {
        return FlutterViewController(
            engine: FlutterViewControllerRepresentable.flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
