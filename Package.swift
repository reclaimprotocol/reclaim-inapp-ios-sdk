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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/App.zip",
            checksum: "6996039c83d5da5a8d002072b07850e388514791cc906795b06b75a077289ee6"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/Flutter.zip",
            checksum: "e6e79c6aad64de62e7afb69eb403d34d4239750bb364d626ab486cfee57413e6"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "453ddfed62e854f6d1a3dddb2deedc308489377172349279b1cf2e27e19bf7fe"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/OrderedSet.zip",
            checksum: "8bd15335493c106416968f236b81bd42f4284b29ba332e53590ee039c2e55d17"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/cupertino_http.zip",
            checksum: "01fc0279e2daa4e7e2d10d06a92491edb9a15a346119423245e397e2ba9a7e29"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/device_info_plus.zip",
            checksum: "f883eaf2aabd997e47bb235547dcba0dabe7d17c77cc5e711044b2ee078d272b"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "06be478fb7945ae8074b987ff4f9e8782854f21ccaec61369c89304f1ea49c1d"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/flutter_secure_storage.zip",
            checksum: "8b0933c5b95691ece5c954b586b96e1becdc2e580358bb48a9fbaa5a4b0d6e34"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/fluttertoast.zip",
            checksum: "99e5be8213cc7bdb1bb8efe30da7c1ab95abd73d3256cb0ea1f3849333940ed1"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/objective_c.zip",
            checksum: "51fa46087d7474a6041657c3eeaa74ebe6285138fbda41d0a49346073031ef21"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/package_info_plus.zip",
            checksum: "03ae195c58ae5c6199ae0c24e6e2b9ef2b84c6eb9ca8ecbe362ab3eed9ca4a66"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/path_provider_foundation.zip",
            checksum: "2136f1a425288b28d1c8b08b0959680df253973e892166697718ebde0216851b"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "640b7213190eb5e8e090e34eba57cb8bb66d5afd5827c26be7fd9bd5450ef2a7"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "9019d3e9ff5cf6ccf57f317fce65358a9bd2397147f19e2bc02b4bb57e46d9b6"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "458ce80fb4891c2a3ea5c50a25d4f490462c20d5831c76dc0e6648bb5f9dd96d"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "c9f4da1678b777c1e62c624e5092f4266f1a746452ecf458420d031c8e8c6e0d"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "18db4e053af96f32a88dd1e975c8e0fc746ddcee6957dbb01bc30260be22147b"
        ),
    ]
}

