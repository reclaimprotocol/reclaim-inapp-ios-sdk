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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/App.zip",
            checksum: "0f1a6a38963cda308eb0c8d428a3034cd446daeb8dc1ed1d4812c4975671d136"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/cupertino_http.zip",
            checksum: "ae9a04b5cefb25dbba0be05c08788a1d5dc95bebe6511429e6f6cd29aec681ca"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/device_info_plus.zip",
            checksum: "67cf7f8087a4fae96b0ac1f16a1fc14f72a03fde7789a870a23413188eef6572"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "1d2265235327a01dabcf26c2355aea3c9e337eb7c3a38fcc6b2660c1598f1a00"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "450f429ff9dc1a94e3ee27b8b85b9a50bfe4ec25cdda0a208bcf9b75bcb00c07"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/Flutter.zip",
            checksum: "cbe9ebecb5c4f477e8158ba33aa21a9b3bb5945c03cdd2468ae3601b5fd8d49f"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "da0a09a6c975cbaf8e2b7c14812441bf2286cd0eddcb431b00bf07ac0f28f583"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/fluttertoast.zip",
            checksum: "23d5a75c20113a86ad78ef88173e14b50a0fd063e08b9aa0fa8e7f691452bf32"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/objective_c.zip",
            checksum: "1151119c0bfe767f2015a5b86b0cbb0257889f1ac1c7ef8a2f152ca79e3dc958"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/OrderedSet.zip",
            checksum: "c2f7ecd24683b79a8af84524d772749d51b73b71890d01eff9425d4d829ef9b2"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/package_info_plus.zip",
            checksum: "ae1ddca686223c90703189bdecb96403a221a1a73950782417ec988e318bfce6"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "86a96051f3a478a7f0f1bf9bfa1a8f2bdc3e8195ec82a4eb70505d4c87b2b7a8"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "fbde5e79207ca1b0ba6c55a1521a7816545a398dadde5e734d1e133bb4ffcb11"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "41307060d33a24a840fc19251e39f53df241952fb74ba3588a6d41095fc82ed0"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "08c948c8169b8ed8bca1c56a04ac2a8dc65941220c755e289135db50961af0db"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.7.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "532d02f534daa92b91bec0109c42038487cb046d24f6a352bf321a9844ce7b97"
        ),
    ]
}

