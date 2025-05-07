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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/App.zip",
            checksum: "5006c3d6e963968ecc0006895aaa875076570784ea8f1c3bdb18f0ce6d3ccfb6"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/cupertino_http.zip",
            checksum: "235fe49e1785c5c279adcbaf2650ebfa05d5505e07c83a883bef39ed622919d3"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/device_info_plus.zip",
            checksum: "04b44b1801b520fb2c6a84d3f94657ba7c284ce58b88a7773e67803125f89dfe"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "c9225c3960373a90cf3af1da355262bb85dc5f2f9c374ff966483e4db30a248e"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "f1d18b1ef0c78359405b0d69e5189ed0fe80bbf55b670a33cfc52f2544f27d8a"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/Flutter.zip",
            checksum: "bdf1ab93f01b92df613c3ae8ad44319b5cfd40cd400752a56be8c18ebbc06087"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "4db75ed608312c969e0afdf8a77fee0a712ba7eeb118370095012647d7562a61"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/fluttertoast.zip",
            checksum: "cfff652491d545cdf8fc3153ac205d9453eaf7804b1cbd9286916bd486c0336f"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/objective_c.zip",
            checksum: "5ed4377e377c07723694b6a01ac2f7d36ba03b6ca6afce82a2efc1d048960570"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/OrderedSet.zip",
            checksum: "f8654ef3f729d04f47c08a548231e6f811bdf5ce2ec83b88f47b6b85899522b9"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/package_info_plus.zip",
            checksum: "d396e995c11f29d4cbe40c93b1428ac397b56510e214a862ce46ad4fcfd8c57c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "8dff401448f50f937a6be2ddb0b368462124dd17eb139a5020fd723d140bdc84"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "e13e91b5c44b3813bd2e2d33c2c240b3b5a0899afaeb9629517de1f36dc87718"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "5b5daee3e514b6c7edd8f8ae2cf9947d68b85e00559f323a9e189bdc0f686466"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "f7dbe3a2945aab585b4163220028182aa3375c2d870d7ea724da26c19014fbb2"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "f1cf0141b9cf74afd5e4fbadd2e0628f90a2035d705cc8c66cf66a5551e8a1e7"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.6.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "33fd287892c376a19e71fe1639b0630ca270517cec6c6074a263bb2ee342fe5b"
        ),
    ]
}

