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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/App.zip",
            checksum: "30b247756a97a3454e1b0ef4316638b5e0eac0bcccd9fd1b25f35be7e37070c7"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/cupertino_http.zip",
            checksum: "bd560462c619cc22b29b4009e0019e67e010101d02c8e16d801d96c08bdf4b62"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/device_info_plus.zip",
            checksum: "713aa99d4136920999ba24bfe7caa6f4bc5740f12009b1fb50472aa47d6ef6df"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "b51c2a094124d28fdcbf7ccceaa733a071888994babc5db19567daffa34012c5"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "b5a3e5d9e3b0cf8617ce416142bc4f5f9cafdd07b152d13a59a792ba39270604"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/Flutter.zip",
            checksum: "8c3f956cbf1fa7317b78ac6a834870d099357bb9f7821e8aa083bfc87f33fd7a"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "fef26a98b39fad26a898c98d2b1911acec54306fd0377fea59a1f52c6a2388c9"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/fluttertoast.zip",
            checksum: "84cbbece2e909291f54a94c8fd5081e97ebbc0958755e4c2caea843fffbbab47"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/objective_c.zip",
            checksum: "6eeb156eeaca80063315d0208a9bef2d916da3a539ba3250a7c272cba22c7452"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/OrderedSet.zip",
            checksum: "0b090d5c1b2dd804711d38ff489b840da53fb7863d362cc17aa5c9ade4fa361b"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/package_info_plus.zip",
            checksum: "96f94c4f238a061e3d65f3500c6f8f40027663310393658d2efd4891dbe22159"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "10304b25a41223af1dd22d2e4580933d0d164ebf89a6ba4947c530f691ecf456"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "326b5cfd37a2d4e9cc42e9acfb3b2180b4776d23a9809da0e19ec4ea74a21a89"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "07fb9c543eec1108e933b2665cd1c04dc13eda8bf890492e86baf884592f7d80"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "9931f7befed26e33dbd210a8d3caf8d330cadcb89585230885a0b79ae6a37fcf"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "d8accb938e978726bc14c93ae2a279a488424193663af9ddb1ecd785afa1548c"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.21.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "2fa464163b8a2f4988d910928c9c46b35ec41e5fd300404680b40ceb227db45e"
        ),
    ]
}

