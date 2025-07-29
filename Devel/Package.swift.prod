// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

// GENERATED FILE, DO NOT EDIT BY HAND

import PackageDescription

let sdkTargets = getSdkTargets()
let sdkTargetNames = sdkTargets.map { $0.name }

let package = Package(
    name: "ReclaimInAppSdk",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ReclaimInAppSdk",
            targets: [
                "ReclaimInAppSdk"
            ] + sdkTargetNames
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ReclaimInAppSdk",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "ReclaimInAppSdkTests",
            dependencies: ["ReclaimInAppSdk"]
        )
    ] + sdkTargets
)

func getSdkTargets() -> [Target] {
    return [
        .binaryTarget(
            name: "App",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/App.zip",
            checksum: "2bc665aa1a6f511cc14ce697c3a7456d845d71b903e8ed87ade3e648ec996d35"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/cupertino_http.zip",
            checksum: "9cd37f067c8ae339fc6cf82fc239c302b2a0ad5584a274dcc1e4e8f68acb6cc9"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/device_info_plus.zip",
            checksum: "b64369ab0ef24276ef13c4f9e67d2cae6267a36c7fb9dcca06bc70573b7b8895"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "e56115917d85f248b86d48a0a2336bd9a1dbe589de550670b5caf0cd2561f274"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/flutter_secure_storage.zip",
            checksum: "114ed1425be9e73e26e517fd5ed1f636fc09b3546ae188a7ed784b4dd4db94af"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/Flutter.zip",
            checksum: "d62068c3e82e027ebc88413b2de99438209337cb614313cb7c1b22722b19bc0c"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "291d24aa403201d49054a51f06980a7b0b35de917cd705d3d2589725390a81e9"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/fluttertoast.zip",
            checksum: "8659f4ad36cfe25617b0887eae3f78dcd7f8e12ec8fe2864776ed145772083e6"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/objective_c.zip",
            checksum: "1f4f9ad0664a2f0716fcc11143e9159ee7fe3cde198baf8dc7810eb4ca048567"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/OrderedSet.zip",
            checksum: "222120b104082cd219f329b30b8c162372ca68b7d5f73a6c663c433af95c389a"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/package_info_plus.zip",
            checksum: "765dc3c51638c0959a6cb3549bb6fdd156851a5bf75f7e676433dbb5d3e4f7fc"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/path_provider_foundation.zip",
            checksum: "3abfd584814254c663981f573507a5adb931e58a3966639dadad9c4a4d723218"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/permission_handler_apple.zip",
            checksum: "8231343aaeadaf7da0c70b14440e32ea93223b26d3c47299717732ba50363198"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "b7e4556989ec2bf0767a349c322deb08459095b6efedbb31cc1ddc85d0fd2a7a"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "3ca9c449dd9be88876b01f669801ad141f900a6c4be96bb56e59a46c4d519874"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/sqflite_darwin.zip",
            checksum: "c4acfc2d95f441d0380ac5cbeca5ea7783ea6e6412c4f791672585e2351ccd1a"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.13/BinaryTargets/url_launcher_ios.zip",
            checksum: "a6b2da05e7d451b65297ec24311b2cd955013b44a0fa28891b245005bd241591"
        ),
    ]
}

