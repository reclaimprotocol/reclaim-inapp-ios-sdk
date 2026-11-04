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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/App.zip",
            checksum: "f27b2c4cf7a2356ce874858d9e9e5b7fb5549421ad82a18f775e2acc841b8584"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/Collections.zip",
            checksum: "96dbbe848c3785f50eadb4c9f32bc37f0b566c7b30e26bd7f0e556b3e23756c8"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/cupertino_http.zip",
            checksum: "45ad6c2a1cb370b293021d8273178f6df6be3bffcd72113bdd8c5096145f324c"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/device_info_plus.zip",
            checksum: "d95abffdc4766e60aa6efaa2a9fa9b9594c9582303fa4b85d01f835f38d0bf0c"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "99926d342705e30918d05890e718c05003ca3819d396cdcc486db5f1a57befea"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "3268e86538c7b356163adc05232f0f2adfa7c4d2a124bea6da07825028e33675"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/Flutter.zip",
            checksum: "4ca9c2b65026ca8f7a9ca88b3f7e51099deaf4aa22a4c353e8f7c06e50888678"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "c5614b2cbfcf1107a758595af95ab1cee0bf33f0c9b1935966bf75e2503aa842"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/fluttertoast.zip",
            checksum: "96103ac53f0edbba496cfba32e27446f2bd06a9dd1725a7c3c0f3d0b314ba220"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "fe35069379fa130003189771cb086effb68644bbe4a47b19bf7565f73e67d274"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/libreclaim.zip",
            checksum: "6b9a7c72c645170dab84a2664effd8dc17e24c4c1aeb8567587225679da1affe"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/objective_c.zip",
            checksum: "08499254819aabda5b92f7c973c86cd9c1bcf0fac8213466a62930208240344c"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/package_info_plus.zip",
            checksum: "8c3da6c3be603055587298c64de4ad8332b8f00f7d54f85cf906f95741b32b2e"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "b07b33a4706f91a4e96061612e93fa39ea0259561fab018f7afc4b4eeff27439"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "f80427e5de4dc452096d87140f439121c3d40b3ef6692ace6100bcf2acab793d"
        ),
        .binaryTarget(
            name: "reclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/reclaim.zip",
            checksum: "17d2e2a0d73847beee3c6adafe5f7fdbcfa0de933b679c39a27fb1b56c72b9f3"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/rive_native.zip",
            checksum: "9b4aea6b847940e002d9577a7003e6b9c046285e6072b64157d26e158aff379c"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "bebeae2afd818ad4e80dc0d45481b5b7ab935945382fa388b008ef03c610bbc3"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "0c0d0decfaeee4641bf43542d5aef8900b63c48776cde8526e35f1eba3981c51"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.45.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "6f456db9d17890233b54e8183d510b6d1021b940240ed845772c1ef14db5e3fd"
        ),
    ]
}

