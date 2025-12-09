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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/App.zip",
            checksum: "c15c14f69a7c288add96bb184aef69fc0f9593bc7e7543f25c7a785c71a4eedd"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/cupertino_http.zip",
            checksum: "c5451f0248ede6069a78c92c9baf43f0921b83375b79008f490f27303bafe8aa"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/device_info_plus.zip",
            checksum: "036990e69d95ac016b8e4f6c9187031b7753e4c4c3f8d64526914efaede2d1fd"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "d698f1886028e775bf2d4a9882033c350738b31d101ae927206c3ca42e86ae59"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "25a287526ece40a2de6545c0c0b3e8722282d387ccce8a9a12abe4a01de834a8"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/Flutter.zip",
            checksum: "d61ad94b41dd3659c033b744a473e6c70b6406472a0f39b3b6ca3c02c553b83b"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "e3ec1ca8d7966e4b6bbc6e87bee65bec99a64fd8b697349ec8b6428cd166e4f9"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/fluttertoast.zip",
            checksum: "202934c626f67535df31aca75ca6acab9988291db0f513c6799e7b9d8323c0f4"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/objective_c.zip",
            checksum: "3edd152a28509870d3626b40153389ff768658862c0007bcc79d63a1a88846fb"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/OrderedSet.zip",
            checksum: "73b68e043a060a52074eb3b9156d41cc9009fe74e820582384bd5b64fcf96d94"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/package_info_plus.zip",
            checksum: "42327c5d5c951449b838d8a2e74e9d369d6082eb66d559efa8c07b4f318ce7d8"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "b38a92aec8b635db8c7ace3ee09a2e89752a2657b0d5d3c3083ccf20e813121c"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "14c8edc164c70a7fc5f9112a17ef53378fd7b6e2c90ba5bfc354809537e71edc"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "eb0b5f9a1163e5aa16679a3d4f01ee33e26f1752bad1962f3681f8722ed62fe2"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/rive_native.zip",
            checksum: "e6ef5760f8f42bd3fcc7bf859120c828c335e21f6fe08be837b722d32a0a12dd"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "1b2e3645e2ebc506aa1991a69c6ccea2a42df89ea1ffd414bf08fcec44c07cc2"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "ebf3b71ad3a677f0f0eeca1266a53490ca0bdb17230e4086cc889a0d353db569"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "829abfd23241af897a5f810e20af48dac70ffcce3e932b1a72f121c1fe7be54b"
        ),
    ]
}

