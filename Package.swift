// swift-tools-version: 6.0
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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/App.zip",
            checksum: "d2792e0e89f9fbe8e18975ecf7bebbafa4c1cc867b616e0fb26bea17fa2865d8"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/Flutter.zip",
            checksum: "118ddcf076133ee5ea0b0b1b7516f6f10e86acfe7a06e9ffb9faadd09c80d8af"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "425ecfed07d134701afbe7877bb91a824518817bd3d6ab744f253c0e5395813d"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/OrderedSet.zip",
            checksum: "6559a02e251435326137ad358191c66efc7c5cf3f615d0b0d5f8a4b9ca70d589"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/cupertino_http.zip",
            checksum: "98ddb5d5d45b3fb541e44e75ef62a2b01b33c75cdcf318c32b65e646e46ddaf1"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/device_info_plus.zip",
            checksum: "a702954ff9584e0f5ec70c05892225f0b99d420f6db2e00e29143a3cb4dd3ce5"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "3bd5afc19b2970ebc48a2881140779f1072fc0cb821c77a54b2bfdd0ed8bedc2"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/flutter_secure_storage.zip",
            checksum: "c7e688901a88249b3fa7f2806f7ffe3de1e5926e4d35b6f704a6fc2e953df2e6"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/fluttertoast.zip",
            checksum: "34087ecc5d658876e92ff1022e10aab1fca67de2dd9eecfe701dc58befd3a9aa"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/objective_c.zip",
            checksum: "7897977253b6f3273af8afbc93b6f24697f47274fed7b967a33320a10c262036"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/package_info_plus.zip",
            checksum: "05bd0dc0574d29a06deb4c7c372ec853c8f94ca32de7360832bf44ccb0cf71bd"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/path_provider_foundation.zip",
            checksum: "625a1638ed1414fb4451f5ecd0ad9a871e62cb65ec5c88cafa5c5ff4a51bd524"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/permission_handler_apple.zip",
            checksum: "09fd7778f9879bc9490713b9955aa5eda07ab89455f643a9baf277507801ab66"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "7b95659c5f29c400501372416c4d94f9a056e918d43c55794af316d8432ac175"
        ),
        .binaryTarget(
            name: "share_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/share_plus.zip",
            checksum: "b2dfb46cc2334553356b832d1e83b2286111ef6cbe60643b1495706a2642a387"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "0633138b01a8bc80e31e2b3a2d5605b2dfe8c19bc54c4265b487a101bc38860d"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/sqflite_darwin.zip",
            checksum: "8c53fe4f0d7ae40626cc7b11116eb8325c8ffe065c46b887477bab8a22da8a4f"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/url_launcher_ios.zip",
            checksum: "ed82baddc934f70cd7c006a1ad886bc717074a03fffcf3713307a9b80a245c10"
        ),
    ]
}

