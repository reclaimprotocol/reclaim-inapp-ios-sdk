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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/App.zip",
            checksum: "82dcff4527bfb2faa0c230b267d555b8722af0fd6cf4afef0775688705ebfb6b"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/cupertino_http.zip",
            checksum: "66f51b132cd7a39766f1fa7f10213f2b12eecf15fcea9a9824c2e11e41ca516c"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/device_info_plus.zip",
            checksum: "8d4880928244993926e6b65794a8dfabc760ace8e89ea12010e3949cc2c773ef"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "8557b70f1df4b4477975fc0e2a70cc15f5dccf56001e390ae4fa65a7b6e7258c"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "cbaa57fb66a7effd9286cf890376d46d08765e9bf5e83826ea4d82e9a504feb7"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/Flutter.zip",
            checksum: "6d27b7163b46d813b2dab5e8182004f2375fac5cc8b496958da0e83aab2222f4"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "903d2b98234e90f04f8d477ae78a7f9f94e6c58b8ab0e8e0bbf4ea58f129533a"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/fluttertoast.zip",
            checksum: "cf62fcf7e47d5acd8e474f16e8befaf2a6fb4c136ba13bedc5b81de73470d351"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/objective_c.zip",
            checksum: "3a7977de54314666fa2617d9af4a3d0fd09909dcced84040065d4c1e109ea4ca"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/OrderedSet.zip",
            checksum: "e83e64371b0426beee8311294bd39169dafe29b484598c1972b535331a20cbf5"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/package_info_plus.zip",
            checksum: "9c479e37c4b33b30fff3ef5006d7b506e2734f590197124cdada307b0c639ef6"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "cf9e9d1bf0398d413ad4b42653852e6499affbca8f9a1e458e51d3527a427230"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "e7976c72ae036d061fa4eabf2e50cea144a3e53af04a7b56ca574fe63c99bc8a"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "603e5c668ad8a66001b55e4d4d01957a1f5ba436b17a5edc3b70569bb6db16e5"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "23a833026eea42432b2a0cbb6d2a0f97e69cc8f9a9d5016cdb509c14c35ea86b"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "2c4e500ae5702a211ee2b778466846e599648f555e650c8870b3f41386b43ad2"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "8466ef060105285de9432c98712b181c1b9c4e81bdb0fb67e9220d1264688350"
        ),
    ]
}

