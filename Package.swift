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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/App.zip",
            checksum: "0401c7b32fcae5e18ed7c08e524de8b699b769abb06cf0cf625e010d77ee3d49"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/Flutter.zip",
            checksum: "07bd3d5aa1513c44b93a4d42abc00f6ced98698f8370d21110a758421d7facac"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "3d7148e546899149a104f0acec2717522bfb3fd0294ed09971bd0b73efda3cbe"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/OrderedSet.zip",
            checksum: "547ef292660a9c6ee07554377ecf4179b2099a5dff0dcb2fc40a31dfb4552b16"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/cupertino_http.zip",
            checksum: "a3ac641b8e64960337e608ae77bb658d588e19fd473ef4c5914f5a9d1056b23a"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/device_info_plus.zip",
            checksum: "367cc762afe55f0c7486a9dccdd9eda83fed2f50cefe49ab7ee28c653b1eea99"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "c440b6efb9503e14676f2e7d1c2c4bad5d38c14a191c8f9da8c266686f3824b6"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/flutter_secure_storage.zip",
            checksum: "1a0918fe9551e35991df94166504520c06e5976f83707087e7276388a3ba76c9"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/fluttertoast.zip",
            checksum: "cf49404d26b1cd264bc22e4558140f677bfb53395dca58d89414db3190a4aae7"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/objective_c.zip",
            checksum: "b69c6f0e2b8cf915ee19ca64bdd9d3ef5a50f29ce9c54151baa7700818176d1a"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/package_info_plus.zip",
            checksum: "c96435280ff02d61772dbbcf8321e052cd0e8a5267ffcefb73160d0db3633c9f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/path_provider_foundation.zip",
            checksum: "3ca8cd34f3b526deae477be81391dc3804998c0068aa0aa482fb72d64949c54b"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/permission_handler_apple.zip",
            checksum: "00054bcca5c4ee9b54580bfdc174e55f2ad3b425e5c037530d1c11beaa974dae"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "8eca7bb35e77941c8b0501d009df4393671fae9e7ad9308cc4341d1997a6ddb9"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "a84c293551211b88b01465992050a48b03650f407a820820c9565651ee18a63f"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/sqflite_darwin.zip",
            checksum: "1610f2fa3dcfaaccaf73061e8fedb23c6b0ebc86e432efd927ce452317003171"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/url_launcher_ios.zip",
            checksum: "47f6cbf49f13dd9a348364e8092aa261738388817b8030afd1c611b1d84c6ce0"
        ),
    ]
}

