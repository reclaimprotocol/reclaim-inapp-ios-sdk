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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/App.zip",
            checksum: "d34ec71fc3fd9b04b781749895717de654d0ec8a3952aac8d4f8d32543464645"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/Collections.zip",
            checksum: "82eed03a91af6a23dfaa8e5e095a0fc593cf0cf21d5bcceaaa6bdd44876158fa"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/cupertino_http.zip",
            checksum: "e39255e8aa0dac31525e665896b0abf6554c8244f20d41d898cf41fe25f01f53"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/device_info_plus.zip",
            checksum: "c3227cc4505b329b7616e3f686efca936f671bfe5da36b43453859979df99346"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "87c72ec57e946be690847b038c75293cd39d2c4a4f3234c98cb44b63b6824c9f"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "a17caf6b26c28aff42f49c386dbec00611ca3c2b841250ddde4ec6c1d83d4c0f"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/Flutter.zip",
            checksum: "450e28f18fe22f9aff0440b98640ece3161c56ff0df047cc04592155f84da70c"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "bcff7889fb10804cd1bd2443050b9ff3af89e8f1aebdd72d94a28a1ea8df46a4"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/fluttertoast.zip",
            checksum: "3ce99b057a1cdf65c059b9053bd084536b33fcac27536f76190bf7f1214e97c4"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "2c2bd71e9fe66dea94ab0b8b898ed384429bb70cbc61214ec6ecff22ed5980f7"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/libreclaim.zip",
            checksum: "8daa7a2ea6504de7a5358ab58746ad3f90bb07616c9d9ffc69e4b0aa9fbf3aae"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/objective_c.zip",
            checksum: "2076bdb87f4ca6c3977e523b2ffeb87c19fcb2635d9a5d0dafb9947523b033eb"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/package_info_plus.zip",
            checksum: "e7afaae761d93b1b55b1a7ad3b62050b1a3483d4ff9031f3bf02b776e544fe6f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "3021abfda5144c73a2635649b5d1f260b970f64f8e1de872fcf02873bc5a3ac8"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "0380204eae459e2c7bb488ba4f26b3857cc37f6ff1322fc3ada1f17af88b9099"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "ab970cd778723e7a767c5ddff1bac6512ce031d3869ee4e305be712d062b6f55"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/rive_native.zip",
            checksum: "a5492dfac902ce2d13e808c6e6d069890c4d0043f539e4c29e21824d720342f2"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "86e5a38e04a90e5d7ff73af761e37e43740a9bdf5e519ecdebf8fb3fb2d2c6ea"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "0c7703b46f78e36ea6603d85adb37e9ac41614440ea56355ffe566aaf9aaf32d"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.37.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "303aeca866cdef8f5e30877479b2743cb1e2e071f7e9ee71a980345d875e9064"
        ),
    ]
}

