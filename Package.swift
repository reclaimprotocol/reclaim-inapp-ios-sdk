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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/App.zip",
            checksum: "48c3cb09d211958a8f388857263e45ebf35fd900ee36078db201ed46f7f96fb5"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/cupertino_http.zip",
            checksum: "58d22af42f722ee32b252f280ab31679cd9dc0c3b664054f583e0042a58a0073"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/device_info_plus.zip",
            checksum: "471e14d4b6d1544153cdde066db7802ccde5f1f105f5667193f69f9f823b306b"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "5118901f3f561f58dcc657d206bcc078d2be20c2d1c17be6c8efa4b83d1a3c7d"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/flutter_secure_storage.zip",
            checksum: "0fbd11d12934f1ad4c48bdc62900de643a6b971a64b75fb3ef066846b7697abb"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/Flutter.zip",
            checksum: "845d7b4a84ff8a8f9cfd47ac922c3a682f7311cdfbaad43957e9b287fbf7d294"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "a916f79dd039843fb24afb658b8a6120e7470e8ff563c98cd86fb357ecbcd60b"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/fluttertoast.zip",
            checksum: "8000fac10fdae09b3f3d98e1d243ab7afb205e07a0f644f0b0258207d8c658c4"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/objective_c.zip",
            checksum: "0bbcb16f4f333ed04d7285351829ea68f91742634a65b360812edd82b59ddcd1"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/OrderedSet.zip",
            checksum: "ba5dd23d7bcc7f2a3e90a12c1edf5ba1a0c80539e0345082242a37bb86c0e99e"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/package_info_plus.zip",
            checksum: "fbaa5b92b25b693e7f80222b3873af4e8fbfecde58371f483c956d14c47a8650"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/path_provider_foundation.zip",
            checksum: "9d5e516973e8474ae4936cbee5645277ff29b75b45d858aad42f23a6eca4bccc"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/permission_handler_apple.zip",
            checksum: "050a4098e940b686c3c767ec1ed92dbaf678ff629df32b6d442825e5054e43ff"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "34344138daec1189c0836cbcb26377aa16e5f33a48d850f9829bec30c21e1af7"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "c991e67a3969e26b95ef8c7a5f3d29510c5ccf2ee6671de0b5030a1ab0bf37b5"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/sqflite_darwin.zip",
            checksum: "eb14608f5a87c3a37e3d524671dbf8a765c550bd28f70bff3efb2113da64b87b"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.7/BinaryTargets/url_launcher_ios.zip",
            checksum: "d698ce62e52663bdd031c6f41e125616c7dc766f09507d954c63026a6e658900"
        ),
    ]
}

