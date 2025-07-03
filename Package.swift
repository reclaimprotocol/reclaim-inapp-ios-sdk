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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/App.zip",
            checksum: "2edc4f315017615873f80f2f1d98547cae10df6350cc6ea13878839fb3272333"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/cupertino_http.zip",
            checksum: "36bf64eeb3f44b7cc2f6cbae71f65dcec255b14739cb427028cd73532e6a40fc"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/device_info_plus.zip",
            checksum: "18ad2efff0d6f009debfe26d80af0c4cbd69f12edf4c98188d1f44b0370645d0"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "ddd2a50e898cad8c367ca0a35f3143693fc160a445f7c8ab824ee2d8fd6f9203"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "d6b049495dd604d134a414855a66c280c6b5509e5d406edd7d60e0c439ff1a27"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/Flutter.zip",
            checksum: "a82e967d3551a9ada64da7909d0834fc8488504430ff0f00e711fd1179c36403"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "1b3eecf59f1335705cca16b272d74d266fb3f79ed9ae1d9cc9caee5a6c3737b1"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/fluttertoast.zip",
            checksum: "e788808717c731e3cca601dd5e2fb744be2116f756f88b4cbddbf03caaab763c"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/objective_c.zip",
            checksum: "b457233845e066934bec43cb78a64308b64f1c28d71afd2c38f844060db6b88f"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/OrderedSet.zip",
            checksum: "c4bbf8693f5e822d2899ba98a86b435936fa46f94ce3844576701571487e46aa"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/package_info_plus.zip",
            checksum: "41a028c2e2420817e3fcbd5f77832f44efc2035460af2a8f9fc7420b2fa0dbf0"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "96869a29ae3821bee0599f3d7c678dd51bc2931384514b4e55b1f34956b0dcde"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "33ce5ab33b1d630aba9013b06638a4e09472b3f11a401b9667aba728af753041"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "aa9683bf63fed459604fa4221895b61ac6d7a4d3a1b7946757b4d8053290e05b"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "6691e7466ba7628f58ab27422019e4a271eef05731cbfb193adaba0d321a5018"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "570646e9c1e194774416416ca4f9834e22c42fc9fadca26de584afcd0ef905a1"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "6cb610f3576f821b739ac2c39381977de22030c64f667a0333fc3003f268151e"
        ),
    ]
}

