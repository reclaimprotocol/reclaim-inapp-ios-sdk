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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/App.zip",
            checksum: "818687f2e5ddc838aa33ff036b4a97ea240d2fd3378084a7ed4f2b1ff01e750c"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/Flutter.zip",
            checksum: "2a2d07b2698fa4b768fe5ab3b310270e7181ca7ffd31ea250095bb96d7141f40"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "2228558af5d97a2cbb9d9f4920706c5c26b15446757abf754a9e7b7301b005f2"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/OrderedSet.zip",
            checksum: "009b02df56f2c6686c4bcba51b4f3759cfda2cc491c290f10cfca55895031705"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/cupertino_http.zip",
            checksum: "d7095692f74570b7c88f2993bfb60d6814d794672e8415ed773fd836593efa5a"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/device_info_plus.zip",
            checksum: "067902a2316eaca6708fec2f815cae53a534c0e9049c259982f536ec7a968287"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "363047aad51b59a856102c97db69589539bc52157a7aafd8f845655a364ea95a"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/flutter_secure_storage.zip",
            checksum: "a684341e1fc9934062ac8d2a32ba652be0428ac81c7b0b13af479224febcaa94"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/fluttertoast.zip",
            checksum: "30500eee56ed5b8ab3b3ef46ba659dc370b794518a7f4f70df82be3a858a9fe5"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/objective_c.zip",
            checksum: "5067f56ef67de5f2eaff6389acb553dbc71c4e6da47d26f65137736d66840d94"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/package_info_plus.zip",
            checksum: "9649bd9f03da3f45506a8c18c46c5afc91c3cec617b00a6182e4ee2f8105e463"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/path_provider_foundation.zip",
            checksum: "f5eb7823723ea49fe7df9f7b4a6c60c706bc3764e0da7fe6074ab81c54bb119c"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/permission_handler_apple.zip",
            checksum: "6062b0186ae9e4e9a62e9577440230ca32067934376f9313d492cea0e1686e84"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "47d0c988f5dc8f232e9a6ff9418540e9a8b4e9108171b5a5126cd420a32914c8"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "eb568c9270eb60bffb1095c3915a640d607203ea6a93ee085f0e980e87cdb558"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/sqflite_darwin.zip",
            checksum: "1bb6b5d934b6f9fa94ef0cad92dc8448688e8f14cc7f06a3c4f2dd01853b4e34"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.4/BinaryTargets/url_launcher_ios.zip",
            checksum: "7d1a794a1f4d44f5e15e7042621a0863cdca6ba70949efee184ee0bde087d5c2"
        ),
    ]
}

