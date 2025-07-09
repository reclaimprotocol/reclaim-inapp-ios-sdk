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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/App.zip",
            checksum: "09ec593aec649f8878b5f6ce9292dfd4067d053b6955e2d2faf25c3824efb277"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/cupertino_http.zip",
            checksum: "e46d2ba61a8610d1127c36abd78d070444bd84e67c6335706d25dae8d1ee7228"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/device_info_plus.zip",
            checksum: "90fe56988ee1194866dba045e52e7f2cd93286711d3654c5d8bd34bca15732c8"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "e1bf181cbbbc9b01b32dc6fb18f65a8a7ec8bc2cbaff9ea8809540db93e1a968"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/flutter_secure_storage.zip",
            checksum: "76737ceee36baf8e33ce87b554b1e38c8a1a05f7702287c9fabaeffd40135fb4"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/Flutter.zip",
            checksum: "7bfd5899dfa19e4efcd78a562c41c86e78f6d2685971e4d062e8d71f4676a52b"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "0dd427c12bdbcd55f93ef4d7f70e9e07da80edaa6b190aa1c4a75b4acbc9b4f8"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/fluttertoast.zip",
            checksum: "0ca6a824261d94756be8a64675372cbf28cc61c59110f3e275041022c375d4e7"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/objective_c.zip",
            checksum: "3bb31d4e309eefcd33a90937adb52bcdd79cb110116d25179e10c05b3a8d4be6"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/OrderedSet.zip",
            checksum: "67f03557fc1ce30e6f47ac86c3fc8af8da4f8654e5b7cd8c0d305e245d8644c8"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/package_info_plus.zip",
            checksum: "bfa41851237ef58f2b0e7b0c189367034ad2541eebfd1feb71d9fc0e398f483f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/path_provider_foundation.zip",
            checksum: "2886505f7c9b5b46d95cb7509596fbfea28eff17f9837b11cbfed3c7f0b0ad95"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/permission_handler_apple.zip",
            checksum: "201e501d9bac94a121953dfbd02ddaa71ab7cbd9b99332f11a270d7f2d1fc49f"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "aaa3c560c3ff38f2ed4669f4f60498015c788947bd2930ca9ffc069d1f57ae32"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "32e9abe3c6e3833bae5a589ea66082de266b9cd7d7c73bda8a9d3c1214c98a12"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/sqflite_darwin.zip",
            checksum: "ca30f705ae32f7ea5db1356bce9da91fcb5cb9fa4f0b7ef2ba5d449021863c58"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.3/BinaryTargets/url_launcher_ios.zip",
            checksum: "57b15f0501c9d8199b849a7088ff8534b283294624e3709e861c9f1a9de2a727"
        ),
    ]
}

