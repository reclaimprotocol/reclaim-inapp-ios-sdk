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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/App.zip",
            checksum: "673ce11d6c9a3275fd9e520f6c6f5c7702fd8c42582cb4fc230e272ebc0f9bdd"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/cupertino_http.zip",
            checksum: "afae2430151aadbf1be301b3a36200dd5796c59bc49c451289bde0a0dc904c0f"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/device_info_plus.zip",
            checksum: "f9fa2b29bb2e92ff1c8199aa30244f38fd2e981d91542d8cc945556348649d9e"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "0a3004c9e846a0a9407f6185779ea17fad0c69a008b88f33c5037eca495815af"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "1495c88a95bdd20ca876abc432fd100e187b26e866c30ce646f3b6e055a5460b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/Flutter.zip",
            checksum: "5b7be74359776ad4a8af8473e579ab215a5a23243e5df87719cb69e297f5006d"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "86bc9b95eba077f7efbf0bf7caeed379087c78bb23e4af2689147cee1bb29804"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/fluttertoast.zip",
            checksum: "54b5667ac0a233a444f06c0dc9603a15b58314cb3b64e47efffbf8701a275c1c"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/objective_c.zip",
            checksum: "05c4cdb708964cc0b879a082cf89ba6ce54cdbbb81997094ed49d02badc9212a"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/OrderedSet.zip",
            checksum: "a3b34911b3613b719a0c1faed6dd3a8df2558bbe07c5a013ea65db61b924488c"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/package_info_plus.zip",
            checksum: "601de3c8b46bd9ea08b5d06bfa0a07c685cc7f9413251e97964872c2238a8fce"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "0bf387b7b91ccc32a7fc153e9e3bbc1c44900f8bd30316350aff69bbe54f34ef"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "a0abb2b4635d9582b48c5058b854fd73f609ee565e038faca20252b12f0acc4f"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "d45ddefe633750d54f42401d4291a08da0a34de7e532dd31d718b59e4d355630"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "65c3bfbcfda5e2befeb36ff1d7e47142ebddd3533e40997e53fb4dc0f22f84ab"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "8977cc17ec21f769d3e3f38ba4a7c1fd91c7e091cd876d901cc0ac8a384387c9"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.15.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "b2f8322427114f19847e4385ca3e555c1136b3cc656b04375ed9c62a28005bc6"
        ),
    ]
}

