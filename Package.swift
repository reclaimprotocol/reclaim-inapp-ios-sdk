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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/App.zip",
            checksum: "aa781a9cbf6056890776cc22ba81646d04e6464e059cb2267ef86f0e3f7e7fee"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/cupertino_http.zip",
            checksum: "4dadf97ea10d2cc4a6bccfcec9d5275ce3c7e370b3ccad90b19999376066ba3d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/device_info_plus.zip",
            checksum: "9c8eab8299236e2012a63d5360909f52ec5c9e06aaa19599fc129a8f705af0b2"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "b91b6b732beb522a287bbc91cb26e01e8a5186919597974fed8f070a01607dd1"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/flutter_secure_storage.zip",
            checksum: "06289bdf59981bd2782f3588785992823d14a0893e3df5db555c96c0d3b0c321"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/Flutter.zip",
            checksum: "91c202e0da5526fb523fcec2cf9075bb0815211b95b9388b8eb54bead4a51850"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "7a0d3a644443ce937c9545ef06c85bc57c688d4ed3511448f4076fc006ef0293"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/fluttertoast.zip",
            checksum: "f90fcceaacbd8af433ef4bef45ed6cec56c5730e3b09bd3f70f9126bc3f685c8"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/objective_c.zip",
            checksum: "82e999fac5d4857c11e2e6cb194f2293c7e48d1370a62cf1a48a1cac2fb98a51"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/OrderedSet.zip",
            checksum: "57b7fe42240a3ec1b47746fd84ac788846821cdd090a270389571b26c892da50"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/package_info_plus.zip",
            checksum: "a832fa453cecd8864b9a19d88f9ba68ec2a6efa49368af6ccc388eb9dc55857c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/path_provider_foundation.zip",
            checksum: "6cde4851e9c86e072cdba865f86b2881fe502f28d80719c37fa45ed6253d15a9"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/permission_handler_apple.zip",
            checksum: "452de4bca9c4a95315db02bf8331e5dd8400e6a375fc6e931ed4289413299469"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "efee6943bb79910f2eeaa7c69e96e4669a6b9cd3bcb1b8b230c3a8c352455a9b"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "2751a46812734a2298581870b32dfc99e77e6d7b960f5df10aa4f6d473fbe409"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/sqflite_darwin.zip",
            checksum: "b7be7b53445063bca24d92b588c457670f642328b9c87715164315bd4e0c851d"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.2/BinaryTargets/url_launcher_ios.zip",
            checksum: "6c575ecd58951ba71eab3cac97a2747daed765fa12820c2adaee03ee707c6fbf"
        ),
    ]
}

