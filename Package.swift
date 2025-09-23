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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/App.zip",
            checksum: "6b3c898ee9c5446628edece1b2a846836995ed24ee0096b33d4acb439095fc91"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/Flutter.zip",
            checksum: "d25852680dac3c1269117408384c5904fbafc87a78c2dbf50bc48c0bc6c7fdd0"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "d2bc3dacd7b6901010f6591cc894481bdd2749bf91aa9d606054978db09918d6"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/OrderedSet.zip",
            checksum: "8fa1ecca672ea59fed9e504b3cd43e7868e7a53470d2fadc0f2e016ca5410dc1"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/cupertino_http.zip",
            checksum: "fba75de17538da646f59fd41951623ad75831f8040bc22a4239c51aaa969dc71"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/device_info_plus.zip",
            checksum: "0b5016c950b15944de05c32ab61006e1b5839b0ab441e2c73751402a9860d40f"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "e1b293eecd6c1671b28e54e39e866c9f4d5100ba91f1ad7dc03b728579a3e6a8"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/flutter_secure_storage.zip",
            checksum: "b7625a2bbb29730ee45b485f15c0ece0ade3b21c12a0a58f22a39e6ab4e1f9ca"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/fluttertoast.zip",
            checksum: "501af758453710e6e6b8482b20170088419b77d12ae678337c89b576d15cf73b"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/objective_c.zip",
            checksum: "2f85062459375dea714b358aef762cd7ffaab0287b7a91de972c434fbf73664f"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/package_info_plus.zip",
            checksum: "0c28cd39049d70c563a4f564608a0b0b99b2629f175a6afd7cd48a3c39362ad2"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/path_provider_foundation.zip",
            checksum: "4368ce9b7e4cfff31ed8e860c7ead90261f419870054d294cf1bda01a9ea0b8e"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/permission_handler_apple.zip",
            checksum: "11ae43e20893b4c8911998bcbb083b8cfbbc42768e35a14dcbecbe88e8e6c32f"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "bb5f441e746793a349fac3ffbf977b610a13b1f12bd6ca506e74c0ff248b256d"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "4aa64deb1004521bdae28cb580821a3fa3a96c5cfe6ddb0eb3b2c440779ff655"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/sqflite_darwin.zip",
            checksum: "040154a1b994ddd9865ddbe500104f40bd24a9e745d73bc6c4449dba7e6267aa"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.17.3/BinaryTargets/url_launcher_ios.zip",
            checksum: "df94e778ab8ea7b995cf9017db420fb809a7c26dc7cb9b700c3ae39b91bd4671"
        ),
    ]
}

