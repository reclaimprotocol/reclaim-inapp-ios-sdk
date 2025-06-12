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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/App.zip",
            checksum: "9e25f736a08fed827902fe98d0595fad1a8da052eb43650b651851f5ac13ad5e"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/cupertino_http.zip",
            checksum: "a47dc33911af3777e1eb6885310c47bc4fc1fbb5fe2181880907478698fa4608"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/device_info_plus.zip",
            checksum: "3a39e6cd7dd87ef38a1458f25e195bb52f14b1b46cc9240feddd5a25741587df"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "7b7806fdbe077f689dd593c51468f4285b649c8718254dfd6db9db270648a13e"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/flutter_secure_storage.zip",
            checksum: "2b3c7a394d545d8db2e66c3364bfd14bc9973f2ffb65ff4d7cd1ab3eb01eb8df"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/Flutter.zip",
            checksum: "41744e59350ab8cee56319ed172919dbc8272b89d24710b9fb3aa623eb3318b8"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "9f78f4d8c54cd6ca727165e6cd2e6463b20f2f62ac4a134f3aeeba3968160bab"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/fluttertoast.zip",
            checksum: "f8b1eed3b784789def53d407a3ce5c905e354384e0908dd543ce186a51a2041a"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/objective_c.zip",
            checksum: "d4eb3b96ed1c037872895b70441c228c2a491d4ff527a26691d130c671580246"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/OrderedSet.zip",
            checksum: "dcbc1e66c657dd8c3fa24d2b558e471ff848b704ce0e66cc7855cb57924a6282"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/package_info_plus.zip",
            checksum: "22ed70b12d6eee8fd44319fdd66393a7c0c74187175e83af2f1f9a84890e67d8"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/path_provider_foundation.zip",
            checksum: "bbcf4427a3d8bdf357059581a04d28ae9bef5a1d974b9d76563ac14923db6f44"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/permission_handler_apple.zip",
            checksum: "59efdd90066821766d052b4de69003810a5ea6663cb979f8edab32f5c475a108"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "3c15fa218e8c1a2a4d88dc2d99ee44d45fb90b42d850c282b3f45ffc009fb76f"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "28f71f908076d5de6de82de983dc638c53b0dfd89135876c1c4079a4edbcc443"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/sqflite_darwin.zip",
            checksum: "3bed0bf90de13ca08010b99032fe402510511a45336447bcd6067352c069f70c"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/url_launcher_ios.zip",
            checksum: "7b91c3336ec5c9a54185572b2d5d36b43b17ae2bb56d8fc4f619891bb867e7e8"
        ),
    ]
}

