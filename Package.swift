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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/App.zip",
            checksum: "bec0d2d9815cbee0d6052aec316f4acdbc253334e644b657ddf8ae3d17fd68b2"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/cupertino_http.zip",
            checksum: "0b1e44238cb13935a32d1aa4ec534730a18375c285816e8b0e7e538f5565dc26"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/device_info_plus.zip",
            checksum: "62bb21c621bf747fa23f62a53c91e654864cd08bee3648f4aca2448d2316323d"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "56393b2a1693ad84983d3e1e04a140d9212c816cfb4154c497852cfa01d0f4f6"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/flutter_secure_storage.zip",
            checksum: "6ae8c5d6d1209f76533c17280746ced09b173fed367c6ac69513b11df95f3607"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/Flutter.zip",
            checksum: "dea4910a02ed89edc5726580807f0abbac23d1ba872c88ce343d60658ab6ef77"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "46202fdab6d05f2e13a4018036ae3066ab08c61f0fb96986afe29c4154bbdc26"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/fluttertoast.zip",
            checksum: "a04c4539d18e70cea26ebdfc354d841f66fe8d753e79253421a344d16a1f783c"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/objective_c.zip",
            checksum: "5380e6f6fcdc119196a85fef80d1fe1a364a5173996dc569e71771ff6818d7eb"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/OrderedSet.zip",
            checksum: "3bd2b38463f2670762020d6aea97ee27dcc93fd942dad1ec809c0a09877c7b07"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/package_info_plus.zip",
            checksum: "585d3595b02fc6d0da158cbdcc9ff426fca136fb4eb1ed1aec7bfb1a5a83029c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/path_provider_foundation.zip",
            checksum: "0f2830ae310a95b3615cbcab4df718743da3d66bc53a8e90cd2061ef438817c6"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/permission_handler_apple.zip",
            checksum: "444b7fd2643faacf9244fde83112c73c81d008af900f567daf6d7d67e158479b"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "de44fc1efe44668faa37172cd631a0c6e9c7d347b35a600e5d530a12f43a87fd"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "1b5f7a2612e62ef1b736b13a34e2227bbbb23fbbcd6372c3c0db6d4eab6836d3"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/sqflite_darwin.zip",
            checksum: "2175a05e2f1306b5bbdcdf58ca6321127fcf2e530c2afcad0c49f6deb715c91e"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.8/BinaryTargets/url_launcher_ios.zip",
            checksum: "ffcc341144c14b0b267db88d4d4c985bb4b006cc8616bc83377547ac1718c532"
        ),
    ]
}

