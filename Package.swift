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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/App.zip",
            checksum: "482c1b8d935afdbd9f0959637c3f4ff5f0c3fb4834428650329760557357bf48"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/cupertino_http.zip",
            checksum: "f7ad79760b6a0cda700068b754ff5cd36abaadfc69365aa460d57c9b7b0ddaeb"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/device_info_plus.zip",
            checksum: "f24c8fbcf2ea25bd1a66135975ab0549089f67d7d97f008e636fadcbeb8b4b41"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "6ce1935cfb9fb92a435b1fb4817c5d685bea9b0f1deb64498f6038941fb1b6da"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/flutter_secure_storage.zip",
            checksum: "05edee8ba16586216537f593f1485782db7b8565f7d425d97fd1b3c307dea8b6"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/Flutter.zip",
            checksum: "700c4da7543c439ba248a7b7160351506d06cbf80708c4bd484f462f626c312a"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "20ba345e7211fbafcaf09148cca901deccfe394b56e871331adab3a7681e432d"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/fluttertoast.zip",
            checksum: "b04570d3f6f8d071994431bbd76360cd3dccb6b16b27aade41f871ac6303efdf"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/objective_c.zip",
            checksum: "593756281a528bbd9f47ba8fa3449a077f641619d147b2dc7e26b22862e612c3"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/OrderedSet.zip",
            checksum: "bee4c9836161acf17c6e952908a6b362fb048f60d8210dce40b65bda9570cfb7"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/package_info_plus.zip",
            checksum: "4c6a4395105a9634fcad8c4f19a08f61b0a5207e60a24c915626d714134c6e2d"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/path_provider_foundation.zip",
            checksum: "534c9587c5dba0d26f4638d25cb39be0b6e3ec14eda7dbd2f051577d5774fcee"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "326697a8ffab35d45ff661bf38f8a37a7fdac25118397cec7e5dabbed6c24677"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "a7b86c86f3c88f2cddd8a9dfe5346d28322fe051e25a942cb96574f888e9daf6"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "587e87b7a1751e01efd99a9ff9cdaab292731ccf36e54acfa9a58ccafb8926c9"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "601733ad85d966bc807d13d6c8185f4a58b9f75b86bfb77f84127cd20f26fb20"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7-dev.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "981c5c58d72d4cd8e58d3b0dc249cb97df04c1fd3e8a8a3c24d1dfa929ae0534"
        ),
    ]
}

