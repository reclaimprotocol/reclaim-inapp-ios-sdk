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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/App.zip",
            checksum: "a0b27c0a70f5006a79107048bd99f7a30203ef7bee1a9cb98c5fdaed13766dd1"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/cupertino_http.zip",
            checksum: "72637a690aea9683781fdf7477951312fdb97bd4709d48940d0e3fad42adbf12"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/device_info_plus.zip",
            checksum: "ec653867bd19686745872dd530e6614642aaacf9f14e69e57b1f820b98b5f721"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "d1022eb1373704240063b64647dfc2b64ac06c960c2615999fb2af2df2549c8d"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "d0707d1793a1c1d0ac494150791ef2297623e6aecef58940e2aa0311d8630b0d"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/Flutter.zip",
            checksum: "231b71b735b5ca64e7a08765e0d79276bc715b8aeb9dd5f246cc3a3c749ee87b"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "576af992da542dae3f7540aa7c596f1caf7923a1616901ac16532ceb68e11eb2"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/fluttertoast.zip",
            checksum: "b93c4858a006382c0dd7594fec7d96bc1067f26e7fc5168c1945eeecc91ae392"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/objective_c.zip",
            checksum: "328f4f36d13f819202ae2844c541898a0353cfa69448f5e4ea3e25fbb5f97a82"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/OrderedSet.zip",
            checksum: "51bc5543002f31634691f1346588c2b2a2cf773666c85b71647f0144c5002bb6"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/package_info_plus.zip",
            checksum: "a68626e08f3673d0be568891838da117fe3cce991035f8e2b70dd908d3694679"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "6f5bc76aba5b996775e0ccef06dcbd279dd31ec0f00c43d50778905cf9b64506"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "a05c3dfb7ca8db0f9d32231c72601e77f86e661fb7f1b2c490c602ff3a4b5c44"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "d7bd92f39b9cf2557a5cdc2082f02ac634baa3ca5f02acc66b117075ebc05c1f"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "d457a6018c1d718faf93cb874de746d275cd50e40e43371dc7edf44cbec14c34"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "ffa437fd582cebb07dbe49a29e3ee8641d6d9f81f2569bef3e84119dbf45d6d9"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "c4d4adcb6e34226ae1b3d6a19525db0849f03a5364792f36af857685a5bb790c"
        ),
    ]
}

