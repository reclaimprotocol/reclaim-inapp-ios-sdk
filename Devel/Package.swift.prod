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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/App.zip",
            checksum: "01d3d3a399a713c6b863ccb58bc28d5acd10270b2f165517f5fdc604742ada90"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/cupertino_http.zip",
            checksum: "0bd37a82d607383dc6b23ddce731f4347f4d4bb136b35fb3cd42e39c8e942e86"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/device_info_plus.zip",
            checksum: "1a5483056f34223c92397cd1da62edf06bd794f1f392c24b492d02a03611bffc"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "0c7a8df952c363e9b39eb101b3b27d6cd5d274a739bfa18412a05831bcfec817"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "f681f79969451f9859dbc4202c7efe88b4110e5e88faa91138a4431400a9028b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/Flutter.zip",
            checksum: "273e47380462ae43a57d62d8c27604e79f369fd4cd6a375c9ab754e2650e5658"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "1811edaa9d6a7da3094c8bef88b78113e300e92b71ca41506305931407cd7d78"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/fluttertoast.zip",
            checksum: "94b3b51e8360aab47cea84ab59ea35f79cc08e4546c32501da2f37212c4c848d"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/objective_c.zip",
            checksum: "aa3f61df6e4e02b643a3b0ca53458fe5c7090a1944a3967faee847c77b1cff45"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/OrderedSet.zip",
            checksum: "4b7fc190496953e84fe071bce546aca736987c760a49b07224a20b0092e74841"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/package_info_plus.zip",
            checksum: "9a512fc80695698a933bb20b291d8c42c5a76f9dc2d119f38ef93894a24d29e5"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "c6f06f062fce86e21996e443b3701f1eee113ed03725970372489ef77600ef4a"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "dd2dd168be7d337e12f2efae7c58a7c102373c4aff2d44bc0357a5585f9e10b9"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "431b7cb36d9b01ab9df086b20af1c0d95a1aa2c77fca61cc6b02fc6547e4aa6c"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "7f125436a36bb45003a9dfb16494ae79237cc822d9d2a4421854fe3b7cd8ecce"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "29c62d73ef95863368adcf8b643db0251d9d221ba6c30cdfc8aea21909ad7220"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.12.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "89c39a179e4a8da41bce246749fb25882213d12498a37b2ebc2745792ff2245f"
        ),
    ]
}

