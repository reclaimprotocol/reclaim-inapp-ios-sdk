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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/App.zip",
            checksum: "54590d4fbeb416b9fd41f93f679d98277c32a2796ec04d6b88f6df8dbc464d42"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/cupertino_http.zip",
            checksum: "cbda8d8bf2766f296ac1ef4340f5b0785c20da87ec771c78d3c3c9ee986a7cff"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/device_info_plus.zip",
            checksum: "9a4288e1d7cc2dc32e34ee4fa8ccadb5a4403b812a5ac1eee63fec4582982ae8"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "56e3cec49fafb67c89303e6d4e870dc8c7e67e219333bf80e46d6cecb773fcdf"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/flutter_secure_storage.zip",
            checksum: "36d396fcbde586bcedffc26246483c5888bde91b8126b72848b988431f484185"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/Flutter.zip",
            checksum: "a17224bb556edd7f854301a48572cfdb8a21c3fc27466e9c8f81bc707de64276"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "32c84b215f719c0167a0d52def134922fd2e3e3bd76804612d46f9dba2145b75"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/fluttertoast.zip",
            checksum: "0c255c8aba4c75d6f4def54c2e01a91d3fa0b0624069cac076e710544d25d25e"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/objective_c.zip",
            checksum: "3050fe636dd841c0069e24f61df64bfa9716c446bcfdbb20229277a97601cee4"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/OrderedSet.zip",
            checksum: "766b3c6aea72b087237dabdca5009d3d5460c3357ece6866b87477686e7b650d"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/package_info_plus.zip",
            checksum: "3ca07d3266a688f1f9ed2cd4390f98825dcfa5a8c935f39ebd0a506d3ed58830"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/path_provider_foundation.zip",
            checksum: "aab42df42b3fe1742c307dffa6b19b4045cd6d204a5ce31f2a73b3954fcea9be"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/permission_handler_apple.zip",
            checksum: "1f842a119f81e2b0d31903644b0687b237a1d8782e773523234fdc5f8e638b9f"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "1efdda82ae486c250de060dd7485d6c686698097fe3cbd6fd798adf600b9619e"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "1675c3eff845a0c556474aac4d95b192f12a665d12d0e85223a5900d20b4d395"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/sqflite_darwin.zip",
            checksum: "b3b93b19e4f24b2f18722c914ea7a1c6659c9743c9af89dcf1703960a10cf59c"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.9/BinaryTargets/url_launcher_ios.zip",
            checksum: "dd8e3b46129c2eb2ffa5d38ff7cbc009f3941533d249538f1208aa1df84b36b7"
        ),
    ]
}

