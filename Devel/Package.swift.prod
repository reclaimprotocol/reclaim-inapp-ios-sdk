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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/App.zip",
            checksum: "031c2ea5d7606a69e19521d9a5c732430902ee1623296ada359b60731c82bbd6"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/Flutter.zip",
            checksum: "482dc4101ff17b6ac232ac042e569498cb3025ce17c1405776fb7e6b37dd9896"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "6153d3e26b2cc0de84a904abbb8f23b31611a8bcbf51eb5b5fd9ee5868152844"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/OrderedSet.zip",
            checksum: "eb96760c9cb076016cc3fba6a70cb750f87b662f8fb4b16ce2925712d3b5a12c"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/cupertino_http.zip",
            checksum: "5a904b2d2d494c6f913ff29a1f5252be7c92c576483ea1bc23477bc695efa779"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/device_info_plus.zip",
            checksum: "e9deae98f19e524fdbe4ba48393149d1a3a773327796372e63882cce2a98d725"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "e8ef362e665fa926ed0404dda8ae072f5326d88bce960fa58c4abc66f0b965b9"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/flutter_secure_storage.zip",
            checksum: "4ce2bb453516b0da275b85ecf186dc9ee5e14fcdf0b05cb86bd0d0ddfc3431d5"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/fluttertoast.zip",
            checksum: "6b43e4399cdc9b32ffc6a0bea503c0ddd575d700f7b68e0231580f191b468866"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/objective_c.zip",
            checksum: "2cf82ec9fef87e233af7a6e06e368f270502efd4466bd6077c53b8213074ae29"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/package_info_plus.zip",
            checksum: "8689e5f3dd42da7e51d5f035023126c73e8e1519131144f47f6d753c2d88a3e2"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/path_provider_foundation.zip",
            checksum: "23bb21885e141c2316a2aaefee10e180c863f22b919881f2db88d229e544420a"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/permission_handler_apple.zip",
            checksum: "eb98f87e8c82579df66e050fe90d090e75a4f359988f791156d48d90c5cd9f16"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "73e391662ff80ddee3defe13a557a0f359b22b27b1d8d69887b8535343ff7963"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "a144e371d2cf28e235c6091e32139cda338ce6b03605f5e1fd0e76b97c5fa96a"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/sqflite_darwin.zip",
            checksum: "8fd3225ccb745456e9a9efe7a558dbd880b3ca94d860690922152828722177fb"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.2/BinaryTargets/url_launcher_ios.zip",
            checksum: "a33f4170862ec5998b617f95543037cd5892b675d9aa1751a68dc25c50ca274d"
        ),
    ]
}

