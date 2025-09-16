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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/App.zip",
            checksum: "bd924499862767b4072710f508a9fbfb8cf0f9ba181f4c03aacdc3a2d6e91dfc"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/cupertino_http.zip",
            checksum: "e9fa94fe77d24fc9eeea98c95f8564b30b95f4ceed00dba81605d58686bef3dd"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/device_info_plus.zip",
            checksum: "4d0a288bcd01ceb99d694dd68d1cacad9fa0d5731989f018199ed43e64a60375"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "6bf7068f70dfe40fd27153b54e0c6f711ad16812178742d19ff79780f0d77304"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "d83c1b15ee457fb03abddb27e6b499573623b6222177b134a3d411b0c389215d"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/Flutter.zip",
            checksum: "2ccc21e050fa8e276bb508ae006ee4b67d15a7fa29e46bc92bf0d0049db1eac1"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "b65812dd1d916bd0c9cce9c96d1531c1103343cd434cec4bb7e61c4f0760db07"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/fluttertoast.zip",
            checksum: "0a0106ea34beb9b943af24dc26f02937337f0dd8c27c66803d60df87f6ec3b4b"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/objective_c.zip",
            checksum: "e78c39617566fcb4d6fda68e9857e9beb5326aeaa02c217f1573089c5babd171"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/OrderedSet.zip",
            checksum: "46f94028d5695d25043c477dd940f36e70e921f303510c3868fe24ec552bd405"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/package_info_plus.zip",
            checksum: "91bf3dece1d0d5a106295f7e99ff1527dc7f440d9fabe8ccc26188c120afaa1b"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "5c01014aef476aefc2253854205a8d1304a735273df434ad5bc516cc54935cff"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "f29bea46e56475fc03e2edde14c04740a4b612037c90b6c43bde1828d87df6d8"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "a1788e99299916bd8f2bbdaae4bb6f4fb196e52323cfb33bd2f2434f9c8ed51c"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "0643d5d24641777a02f96c1905929518252c77ee0913f259ccdd0a45ff06df63"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "bb40a5c37dd35c251efa0c151189079972e3c949f1c5ab5309f2f75a0cd716f5"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "4bf28a443ba7886d1989af40a2cb6873d5fd5f45c128a5b022c424a2cc96df84"
        ),
    ]
}

