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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/App.zip",
            checksum: "b50c2915babe23c50870be84fa2bf4d246d5455f2dfdecab5f0ada41978e0693"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/cupertino_http.zip",
            checksum: "08aa19203b9c9d5bbbb30e873d63e36cdd21dd32d380b4083cd6708dd1f69d6a"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/device_info_plus.zip",
            checksum: "16eddc22b210e6c7cc376647c17b318c0ab47ed77b36ac8c31ae720ef8d96513"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "7029dc9485b1b8cf483780d450f4a3b806ced3fa2a5e2440056525141c65a37c"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "71f75dcbeb7dd4cba8a486b60126aae79eddf0eca97a67ed5fec1ede31589136"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/Flutter.zip",
            checksum: "45a4526a2f91977951b224d45c3b383f474a894019126184022e47148d2fafc0"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "d6f8417d6243c0802adc26d8c9cf687b3a9987bc2d0430cc4bbbd0957fd13ac8"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/fluttertoast.zip",
            checksum: "c3452f0b5cfd5a5d3e7426be975435be1c6a7dce0f49ad59ebd9ff5aade751fa"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/objective_c.zip",
            checksum: "0e6e10e6b2203584392282d0c8881d27260ccea6fa85e8558727ef778f939fbd"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/OrderedSet.zip",
            checksum: "4ffd04eaf621ce697e8014829763c285304c04b58b6354350d2c319776a9cc6d"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/package_info_plus.zip",
            checksum: "8f545e46d01beb169466edb82a3802635cc048fc73ef064f5e9b5e52cb76a840"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "41330308ae7a6be497e1bbaeba91b5c516240b1171ddbd7124920e9944e5620b"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "d47b670282616111b151bda9051e87e0f99ba2814ba76cfa0e42d60db2b60fec"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "ab1f0d65bbf4cdfba2127b2697eaa63da289b7fcff2d169c60c8c147346ef6dd"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/rive_native.zip",
            checksum: "d79f523036964a1cfb55f56410ab16255fa297702aa1f92c1f1a6d33cfe4dfaf"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "4f20c42679695739f7fb86120e9b2aab65ed1e151b883940b3d3f839965324bd"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "0fa72c50daf5cc7b2ad5729eeac3a2cad56ee016042327e19b7d8c770e8c21fa"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.24.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "7558c49b9e58df45143b9cfa711bcd228bf20deee980e917cb125473289dd1dd"
        ),
    ]
}

