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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/App.zip",
            checksum: "2f16be47d2ab61ec1209be7eadf6951d1e38314f694c7f95bffb6e8a25bfab1a"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/Collections.zip",
            checksum: "a58f16c41423697476a8bdaa5e9b3fd7862c168adf6465ac14fee596666fc394"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/cupertino_http.zip",
            checksum: "027b89551bb951a4b20d16b30692a65c7c04ac4c9be2641bab346650152c0e17"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/device_info_plus.zip",
            checksum: "1f8ccdbe195676be3962d8e98a737fce4689ce53f73b4d13fd23fc9139e75dbe"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "491e49b6d1484d971eea423bb681a1bde88f20e6ff8c50616d96e8e21ab7a7d8"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "a99132196b9c6d436df38857d89db424320db703b0e71f03186bf35321694ec1"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/Flutter.zip",
            checksum: "e0e23aba750496b3170e3c203bf68c0988a75a13596f2aef5a8e2cfca475feb2"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "454ea42771b1d1d471302d8fba638107fc416786d29975b0b1c87c8b09549965"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/fluttertoast.zip",
            checksum: "9ad8cb91ff796a9d61e37e5f76ab4bf5db958a8fdd4a116f51a1070172b64d36"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "9800776e385df4ee2992d44cba15b221ec9ec13f85b8ab7568aa3e9754794180"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/libreclaim.zip",
            checksum: "40900b9b3bdab160805677cd0fbf400249f02bf94e3a5e931d1a9b74da02652c"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/objective_c.zip",
            checksum: "8e417496acb0870621c95bae231d57976bc913b1b20f3ccbab85f49f84ef4e11"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/package_info_plus.zip",
            checksum: "2a525984734d1687d76715413f7073e6feef1974c5db89f240361c5f7d7c9632"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "5ed42c83b97ae9a7c53728b3bbeeb6b07ba10566b8a88b0c02ab6f64efdb0a6b"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "673a98d470ee4610eefa57565d2dbbbe3b8417e5379f7663b0e1ba00320ba0b0"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "d498a02fdc69d52fc9e8c4b2e82f5a70b5cc757b74596f3a9d56259455a8d7de"
        ),
        .binaryTarget(
            name: "reclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/reclaim.zip",
            checksum: "cc036fc02b496b654d12b94150c8c1a46ea429b9ffd3b70808b314ee7889cd86"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/rive_native.zip",
            checksum: "192b5c01a700c3d70efa2ceff1bab2cd187dfc4400c89aeaae4a42adf8146a1d"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "46a14224d0423452acb8460e08aa5f4f770926fdf9d56ebb2bb37cc8ec473b73"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "5b2618b55132c2dc1cbcb26938fc9b357305ca2564064f11a4edbce7dbbd286e"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.39.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "be250a2a4ca20614fbdc362de1caadfb861f12972c84da89441bcdbb4853837c"
        ),
    ]
}

