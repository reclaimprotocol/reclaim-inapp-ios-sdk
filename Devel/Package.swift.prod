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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/App.zip",
            checksum: "c80dd8b50422e3324d55d9c643e823e4b218f7fbe43e3d9f343408bfa9b1907a"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/Flutter.zip",
            checksum: "f98acca1b25e222a221c802064d425d4b11e8a75500b1737acda386e0a0e4aa0"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "2c9eaef51c3f5246cb1d93d62f9a9f245c24654943a6244ac425259920988f95"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/OrderedSet.zip",
            checksum: "2185f2e757405833e55a05ad89deeb8b3841b08e865fc14a413a45c7b4e78060"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/cupertino_http.zip",
            checksum: "a81354ce3b4370438973b0cf90566b14fe922ef52f5372f723cccd6d29d3a2e3"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/device_info_plus.zip",
            checksum: "3d9bc1dd79138ce2e29b7174aa8e878704f66ca38f2812d452ee18f722e50f56"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "a2f7798111f42565f77c6f10a357b712bcacb591415b6ff6f6b0d59600318a48"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "3b6d940a0018430372dbf966dea01c6b0417707bd8f59a44a004c69d2c298153"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/fluttertoast.zip",
            checksum: "d9703fc444b16c5d5589e4299450d5a027d01e14c731623ff58d1467f823a015"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/objective_c.zip",
            checksum: "86485a9432973b590b8833aa4314b444c097db9aa75a3ac432bd43e6b4791628"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/package_info_plus.zip",
            checksum: "c5b48130640d852df6c7507b0b762debdbe973830ceab5f2d6ecab0a4cba0666"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "c2b17a72e5f262789e679b58558e01410246902fd54744fe87c6c0948be83184"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "ca7266d4d68b8e7ed8807ac32e1d38ba625abe4b418ec4bd5d7cf57c3b7ccf29"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "f41e7e27abd864a8ca64b4722badc49e8897e287795a946464c1f05c4c61eb0a"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "6b1cd678886eea383fc144fb72c9837679aacd563c3f3555a1e13856f9bb922f"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "9ee826861f3710d93366ec9d12afdca776619907a29b26861323a81a3af70882"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.2.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "927f05c7401140644d1be984f65789d6f065a355fb3581a4a9c0d4c3ca850a25"
        ),
    ]
}

