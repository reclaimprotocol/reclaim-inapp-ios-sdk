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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/App.zip",
            checksum: "02cdae07b6da097391f4048f8c68dd87221acbcf8e78179f66f89a3d1b446120"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/Collections.zip",
            checksum: "e8ad837774dc61e382ba9c50c14fbd27c6ded5acd76273a622bdd0087d5c1612"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/cupertino_http.zip",
            checksum: "7f08598c6bed196f18127034d16b84dc9edd5131dd380d4003af74e196863fa3"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/device_info_plus.zip",
            checksum: "d3091369d6d0b3b796dbbf493cabb9da255bc70c8089621e81a00ce1ab72ee50"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "d2db5d612d304e5fa2675d95ca9516c517d278a7eb4d9f772e25bc82de6d7f5b"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "cc506d4d39727402d9ef45986c04d4186576b5f0fe9a661ea2ebf676008cf0f8"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/Flutter.zip",
            checksum: "85f51e474d05888fd05f9b9029d10dc3443a6209c9464c85a8bca4bd1d45e48c"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "db807398b1bb2ac4e99a66bd39215c848833afb08d7d6dc232c19a47b3f03408"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/fluttertoast.zip",
            checksum: "43b70198a5815e4a1af8b4434989c3390793f8bac57b54eb2ee41ffd190b380e"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "82c68d9b6a48c0fe896ac1afeb37bb0ff55d2d826c4ae0145f0fb13d3e16bc23"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/objective_c.zip",
            checksum: "3dce453b6f5aa168a7e0a23d3e5dc5f337113ceec403ba148818c9ae29410464"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/package_info_plus.zip",
            checksum: "ab112757cb96036f8f60ba0ad4d6d108516c0a9ed6ae538286d42a152fc5318e"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "01c468d6733393db34804831d5a06643afa4d7009c65207cbcfb4cdeabe78c41"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "4f990d116a3a1e2aa098aa19a7c2e1c2f394343cf0a77e90ac58070d52fb133a"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "263a57fbd6ca75a30511fef6ef1c633e5b45d5a1501f9da338d97f3d8a47ee81"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/rive_native.zip",
            checksum: "d1d0df04223aea2165e13ad02606e798120da3b31b99c07e2223edeedd607dce"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "aa209ef18850457651089f7bce6bedb17417ef1de5cc71a2d36b3f5edfd4b599"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "926041c3510da08c470b40efa19ef42c17b17f3b43b32ea09b2671837e3e16bd"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.36.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "2a38773a987ed6abdf7b230991ed87bc8d5e7b48a84f120f19dc235267c7114e"
        ),
    ]
}

