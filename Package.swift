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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/App.zip",
            checksum: "b06329ad7b7605821c77f3b3e03accabd8738c517cd5460ca20a598ef90511ee"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/cupertino_http.zip",
            checksum: "5dba2341ab87fb9f281389cc5e91c7235f6c726468a4d1f11cf8922726965fd5"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/device_info_plus.zip",
            checksum: "52e02edeeeec440e0ed79e0af2149995b40a06ece472a4b2589bad891a160189"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "7dba372166f47e8e5222d214b127c348a3a52dfea32fb589af70ab8d76d4ceec"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/flutter_secure_storage.zip",
            checksum: "196d5ebc9d5eda613ceb9ff87e991bdba4cdc69aec39fcbb80948e3a4110860f"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/Flutter.zip",
            checksum: "afa981e2ff574640ae24c1c5cc77471f969f5162d7dc6701fbdb11dd4ef892ec"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "df6daf0b73ccf273a604ab727e2d0abc5ac24db45bb39a279b0654b3bdbeb06c"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/fluttertoast.zip",
            checksum: "0d461409aa7ad478f04413a7792a845a9f03a86456b1dc94a31082473626c4c1"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/objective_c.zip",
            checksum: "f9276761d47f8a9913930110fcc27e97433d92a1821abb8a981da13529d1e15f"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/OrderedSet.zip",
            checksum: "93479745fb61a5e505631210c7b3b457c0b1a30f79f110e121b7cde6d45aa2d8"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/package_info_plus.zip",
            checksum: "c956c10d3f359881564c29f066cad6b158789a438facba27a64e8692e8377663"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/path_provider_foundation.zip",
            checksum: "d12e605be745d8a3e21ee3d4af4efaa8cf38e85d8ece3596d35610a6f3a89d0e"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/permission_handler_apple.zip",
            checksum: "16048a346f079c9d6355c86cac4d6a1bd7fcff1b1c95a52ea02d731a2708c309"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "f9af9bfe16cca37103e2aaf5de73f68c3a3361dea5560968de885fad313035e5"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "9bc3a4e4cc78bb0228df485346e6b9916738bd6ecc2ba24c0c7f9b6c5a873d9a"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/sqflite_darwin.zip",
            checksum: "db6f1aae66c7e304c89a7374bb6b11f580cdde3c00539ca87eb8a745e5e6cb10"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.10/BinaryTargets/url_launcher_ios.zip",
            checksum: "54c49e23f3b35bd172d1868b845890c489183583dfcb437cf3e29f934719a4f3"
        ),
    ]
}

