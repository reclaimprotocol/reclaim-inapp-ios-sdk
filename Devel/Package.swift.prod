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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/App.zip",
            checksum: "3d894cfc73d244f7c766b00a746153e4283369b8dc17175f0b0c7839890acacd"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/cupertino_http.zip",
            checksum: "e6747fe851817884dc8519b6e1415292ea7ec0350c8229e78a4c1e1e1987622f"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/device_info_plus.zip",
            checksum: "e1946af980e9bfb2c31bef3910defc469f52e8c7b3c04838b0b87796ea06a3ae"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "9a4c90d462931c45f5c37bc67f6c9bfe826e07f324f88587bdfdcca316818421"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/flutter_secure_storage.zip",
            checksum: "cba41932c92cad47d1d74a87a1a18981dcb6130ac55722ebb3087858b174c903"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/Flutter.zip",
            checksum: "ca63c9139d29c7d7a746e4a9bbc8d4be1eedf5956149433a30d4a051efde8bf1"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "c440c67b5201ea7b5b9ccb460f0f308275ab3aeb2ad3d9788ae7b0f17cc6319a"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/fluttertoast.zip",
            checksum: "ebcb797a8fd67995f8e8f70654bd7ee3651bef19a6e6d34e0f286a7bb85b1382"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/objective_c.zip",
            checksum: "051e3b974ffbf5b7a100598349960fed80dd85651b3ff8d324de3fe998a5c3d2"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/OrderedSet.zip",
            checksum: "2b617769f253662874e4da8b1c3f57480d876737316f5676715371d107873f92"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/package_info_plus.zip",
            checksum: "e2f1043aff706e029a9a631b25bdc583cfa26ee96a262e84638d6b72e2a64e27"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/path_provider_foundation.zip",
            checksum: "0a70d2dd274f4eccd374aeb03e14ba7167cf56460737f1f90dc3ed8c7e7aacfe"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/permission_handler_apple.zip",
            checksum: "45342643cf45ac925daeae696f3473d9cf786a96aed0a14584f6d938054b6ae5"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "eaa6ad1224af5c8ca08ec23148ac604add7802a4218cfc0f5e09c8ebd73fc037"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "cd77046388a328abefd4e5a3ff86d28057a5f9deb28c289aaee5c7538bb8ddde"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/sqflite_darwin.zip",
            checksum: "d1628ce16b6e93b93f51d3c753e361f260f86958eea8a6d5f7267ba1f26e4865"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/url_launcher_ios.zip",
            checksum: "5a57eff01e5f604dd7804c6d6861234877b40fe14d5d2b29942e9668233d863a"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.5/BinaryTargets/webview_flutter_wkwebview.zip",
            checksum: "9295a747333f53f00b63de0ccabea9e0e223bc8f85785d01760ca0e64ee07fd5"
        ),
    ]
}

