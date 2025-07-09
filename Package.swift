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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/App.zip",
            checksum: "8f9e1f80ff8f664190b2bbf4370bafdcbac0b6ddba629ea395f3cfbfcde3fbdc"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/cupertino_http.zip",
            checksum: "dc4bedf0c8dcf31e71c1f57c809cb88a45b62d9dfe2bf247184f50ab5987eead"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/device_info_plus.zip",
            checksum: "a08dede9466b5fe6c354f0061e83fa537c8496ee0124b76b5ec97ea1822a711b"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "f575331b1d3bd82336bb02f92441c9d555e361f1bf64f78243b1b0df20ceea98"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/flutter_secure_storage.zip",
            checksum: "dceed8230c681f37108563c30df7cf1c6da00c29419326735a1a05b3e0a61cf4"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/Flutter.zip",
            checksum: "d3b8769e9cd68b09281d76868131a240dc571a26d317f1ef5c486c7d2ea58a27"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "93a223f09a8a16154e3891f347039098789887e7a054464e0282d29379a6a72f"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/fluttertoast.zip",
            checksum: "eba5377629077ab965474bc18e20075143a3356b6c179af79239f90e9893e4c0"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/objective_c.zip",
            checksum: "d10a2b76917c98087e31676e815f1fd3145837b677520105c028badff6e58b43"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/OrderedSet.zip",
            checksum: "a540bfa186d81d0fbe5eaa358ac9eaa3dbac30535e5acb135ddbaabbc0f1ef93"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/package_info_plus.zip",
            checksum: "fab3167bb09c05c513a8f908f4514c9f1fb5a53187299b88c27d5072f5d8881c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/path_provider_foundation.zip",
            checksum: "f8ccbd6eddd82a7bec83f708591bb551b47439c291163eb5039b701090e4972a"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "1e7abf3322bf05017dfe386cc547a5f740c21f9ef9b5496395137c3b019606f0"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "c0be503b7b4ce6b47e7c20455eacc46712486f7403f28b8167c2d47dacac4efa"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "0dbd131a856694aa58b7bfee84ba7d6c250f956a2836deda166935e3d6ee1b87"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "c22671d4e71ca13bef22128a231c2189b95b9f6ea6ee8f70a38dec5b8a2d6715"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4-alpha.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "dbd0309888e4ed16c01771777da033d8f98a71add9c9a49dad90882656d6f398"
        ),
    ]
}

