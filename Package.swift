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
                "ReclaimInAppSdk",
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
        ),
    ] + sdkTargets
)

func getSdkTargets() -> [Target] {
    return [
        .binaryTarget(
            name: "App",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/App.zip",
            checksum: "c6487b337eb2891ac0c53107c64471c3c67d70d3ec5893cfa3ec7e9f5960478b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/Flutter.zip",
            checksum: "488a4aaa6ffc248f581c3a79ee9fb67e4bdd136f47dd3b2d31cd101ba813534e"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "5dd0e26041b0708d1aaea0c2423ef6caebec934394f7de86ae6c2938c16e273a"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/OrderedSet.zip",
            checksum: "acdffb7d1e272d6725ac50ffd793ac4a7df7c1c79363dc877b675930174d1d94"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/cupertino_http.zip",
            checksum: "cb4152ae0109bad7108c659ba0383bd5d92402a4b6ee72fe73342ddddd38f01e"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/device_info_plus.zip",
            checksum: "b99aa771d5cde5120c5fc4fa1e9b28397dc7a314eac321bd2cec9328371efa31"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "9fc22678bc64b10885784dc5dc2d5608617b545b815c5708dfbf7c62820704fa"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "57c78cb722be32594fe74fba6e9d71dddd38926338e3cb39fdcf1ae95ad4064a"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/fluttertoast.zip",
            checksum: "d58c79d9dadd1f75723a20024e7c793c662c9ff6c20ac75b4ef13fbcb3825320"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/objective_c.zip",
            checksum: "2c26d2557efd7ff229473e61540433634d3207f3ffe8411cd89dfc78febb62c0"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/package_info_plus.zip",
            checksum: "4efc86eab71b8a534b53528bdedc5bdacb995fdad7975c5040c4df2674ed2de8"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "815630a44a534745f93054f6f9fd812ba55f4821563573587fd109c01db84bf9"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "128afc164884e80eb4dac2ccc57bc882e8722e3a6b0e25dc88f797a81e1a687d"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "a494aeb22e52fcbf6816da29c1c8c34c5fd07f2f7c805146e4da61ab11d79577"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "0d21ee3114e3150a3f86653b9c787f3d72f21f5bd96ee4d34a02b41d60bc681d"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "3533754600c8a8b4ac2f21109de26261753d37772e7b670a32512dc5aef91215"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "554309b736743b5de97154669f1641672e67574aa796e603036fca98acb09fc4"
        ),
    ]
}

