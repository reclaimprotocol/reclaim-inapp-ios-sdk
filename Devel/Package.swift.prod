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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/App.zip",
            checksum: "539adccb6819d04354f276a931795668b7afa52987cc0efee0f269ef1e659e1b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/Flutter.zip",
            checksum: "6744c3dd57de6afabd805e84617c8c8566842838fc8a20d92ecd8ca921fe6c2e"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "1d96ab0e997b3d5f4d3810c0bf1cfbe0462be81e24f83f704251c97e01e30852"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/OrderedSet.zip",
            checksum: "d023d333fd1573323ae9693c3456042f153d0d7d288e68948c69710d6fdafd13"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/cupertino_http.zip",
            checksum: "52a5b5defaecf64f7cd0d0e237d1a2bd746f455874d3140fbb4133b155e6c630"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/device_info_plus.zip",
            checksum: "418009bd2e47fad1ec6ffadb6202b26994cde4d89acb7c5a86f89515cb7bc30b"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "98bb43f57a31dfa73b192dabb820a8fb9d60d4b68fb5ad1a64a2afd4d5cb3422"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/flutter_secure_storage.zip",
            checksum: "268bf9a14f80c46f376193e3614759123e4c06e43ca679a8899201a5dbee99ca"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/fluttertoast.zip",
            checksum: "2fbbb9122c0ef454d05860c47b52ecd8c4f95cb2c1c8683b497d301001ffc513"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/objective_c.zip",
            checksum: "32402223c724eb248d881f03207abe5d503ea3d108d4ea0fd43a105216a4709b"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/package_info_plus.zip",
            checksum: "62ed0f041c4cda9b66f4c9f4782aa8d6b2c63e6037071b8ed42ed31707e99f72"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/path_provider_foundation.zip",
            checksum: "ea775da422dcee4435f0a0eccdae50a97bdef4db1e1587da2ff3252230030f4f"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "f41bc19c61b5a80e7d22371a05c342865d2a5ad25aec71561dac47659215e56f"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "1262cb668d9bdd6987684e36a7127247e065a13e6972dc0fd2c09978d6b48561"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "dd7559e6b1964cdac2c90fc81aaf570f2d4d8291e4c15390eda3a09f8e1d94fa"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "96b1502d122ba00f5cf4171545f8933d5764626087ab7a2cbd79486e81d9d068"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "b4885e64196eb190c91daab5730882410d5e618b54a9da7c53747c82e243c09d"
        ),
    ]
}

