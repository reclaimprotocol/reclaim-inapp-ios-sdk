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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/App.zip",
            checksum: "097a65d8efe9ee8e5dd5d35c52e3c63857a364096d408788fe5c49d17c9969ea"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/cupertino_http.zip",
            checksum: "f34db1b157902affafe564e2bb953c77d9b167483000b25e28776aa53703d2f4"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/device_info_plus.zip",
            checksum: "89d73c0b9272dbf941ef763cc58523dac658407111773373a2d5a6fd3ff70331"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "ccaafe8d850c2c8c0adf779427ba33f3d0a7351086977485f981c9303daad364"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "f7119033d9e3e7805c42ef25a521e08f67361c29d75b01a31a4d62673863a0a4"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/Flutter.zip",
            checksum: "1046de78ab3f42dbcb9d4f3054d73f79f7546fbe4ac7189c52f285b6560ae53b"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "ad06994956fbf6236cbd5180e3d1ec9179b0a273059fff3206a71041a6902608"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/fluttertoast.zip",
            checksum: "a47ccda100879f65c88c6a246fa5f075238eda36175a481c4b3fae86d032e314"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/objective_c.zip",
            checksum: "70c30f53f0e3908ea627bfa2bef810f5916bc646d9182e6ad3cc19e3748afa61"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/OrderedSet.zip",
            checksum: "668bc6f48b8cde8a8bdc1489242cd55ce14e3203581e66ff298f627cc907ef85"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/package_info_plus.zip",
            checksum: "1d249aa0d9d36e0faf0bbc1b7db1f7ed197636d8c93baf8b21e4cfad178b1515"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "60fcf47518c842831104ff3e3bfb08f4a52cdf6c8178d92be5395b09759273dd"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "e6a3803d6b23b565912ef2d76b5fbe957ead59ab76a5ba0452682b31d85ab556"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/rive_native.zip",
            checksum: "7d1f7fcc3293b6eb3976ae2fcc59c6bd786610b9dbe2d164a8a94a9c91876225"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "a4c6a45586210b8acd33bc1326c42e468392945086f846b3ea82f96950d3e3b5"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "ba58f5823e683e94601c0401e16557a6b60e8c8fa588a6d5613e0c694524afe7"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.34.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "186fee6fe439075e3080c252bec03b6ca134ff66c0e227f82c2d5046ebaa3ecf"
        ),
    ]
}

