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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/App.zip",
            checksum: "eeb6dee637f1e9342720a18be67bff0c17160045ea05cdb87bd6a72eebe2d8e3"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/cupertino_http.zip",
            checksum: "40f25b6a452fbc015ca22053deed5548910dc5b8151e00c51d78fd88013f0d71"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/device_info_plus.zip",
            checksum: "68194bcc79e8b0e6ec3acc552a023b781dddb8e3d5596f7f50acd533e43e8455"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "d55e46ab75da1655178b76d61dcd23e7396561597655475cbd7f302a3b8c4095"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "31c28ed9d2f8ca5758c46b6f9b7c2139c3612b7b00201d477cba9745e8dfaeb3"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/Flutter.zip",
            checksum: "3fdc7206fdf62b0a8e5ca3593ecf4c5a538edaf68f20b18d141d85df8c94c013"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "7a03b25968664e923c0068f012cb786fa7db0f3ec30ee8ba94aa3611be420a7f"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/fluttertoast.zip",
            checksum: "c5174518bd2224e68245545a3793d78c9c8820b9e9e67ed408b3b30965cd1a1f"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/objective_c.zip",
            checksum: "ec02519ddc3167c1e01303edb1d01f614c8212c5a8077fa74c5078fc805e5c2d"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/OrderedSet.zip",
            checksum: "73fa8d1b0801dbad58b37571d18cdf7917019a62e0f41495991af60f7278a06c"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/package_info_plus.zip",
            checksum: "cb0e3546c8b685b9be1f496ade32db0f7c6fa694424f83f5e73398bb1cc6398f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "8d3ba530d891aff111cbd3b8e79c2574e8fdd665ad5f98f3a053d6abe7f14eb2"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "66f7255c84cbc885386fb30d6f092835ce96279013ef13b9b66aa5a1dfaed44e"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "6252e6eff5ec81c885797a49b82f5196e4891812744bc73244250e89a53e45c5"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/rive_native.zip",
            checksum: "639b2117ecaac9d10f971cc120f3aa98c4bad750d154dd171580b93c259a28fe"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "e74c1a570972b3714ec7360fc0e1b5a58396c28e1ea2713aa1a25798755afb68"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "145fe3b5360300efeec079bb1b43de117e106822f973983064411956989728b5"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.29.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "92153e68c800e5155b3f86afb9b83e20204d8d7c7078dc1297512ceb85ad56ff"
        ),
    ]
}

