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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/App.zip",
            checksum: "68007705c17ac487fa2729163b1b736bba83df724bd1823602e542258595efd8"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/cupertino_http.zip",
            checksum: "4da21a18b0f605b04732012913368c00ca95e2238e6e7fb7df8bd3fd15af1a9d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/device_info_plus.zip",
            checksum: "6ea4f588d6977753190338e27f30eec7d480bb7fa826d5fd70b1e27edc9707eb"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "23113250edffefcae380fd4db7db1c6b777bf140ac9c841fe04e7cea3d6834de"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/flutter_secure_storage.zip",
            checksum: "a60ba7238bd33583c4c10ddf9021a4be6707ccb589e062c612c3d010b7a40f7d"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/Flutter.zip",
            checksum: "992230e658f7156c113a70feb71daecccfc60b0fe5cf1b5f662ceccbf6f6e29d"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "ce658a0db8cfb43a239633ce465334860f45056408de5a0153f9661dfc12701a"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/fluttertoast.zip",
            checksum: "fcf42d273fe217497f5b2223410a49bc487a3e833b9d225b129efec2e9a66946"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/objective_c.zip",
            checksum: "584b47da063bcdd244e04eff977aeea478afa3c0580cb6af395f3559f7610184"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/OrderedSet.zip",
            checksum: "64dc1829da05c6c537795936f7b2d947e3faf47750fde0bdf3879e6e7fc4897a"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/package_info_plus.zip",
            checksum: "4c417c1d3f8750c1b674ebe4e9be07d4dc2b3bdadac0c251b20abb633ebe6ab4"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/path_provider_foundation.zip",
            checksum: "821aa78887db8ac98ab10865decc9becb6d60820ff104abb67ec76bbe1c3dcdc"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/permission_handler_apple.zip",
            checksum: "1531ba766167f8d11b17621348e2168871e26eaeec25766dcca0a016aaffeecb"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "9a52e3fa52b4a6eb7e7c99765bca95666d7f235206928b55637c40e24a5230a9"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "275bff8d7e7127596613aaf8a90c4ef557b15dff7794c5d22bb423ad96b5abdf"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/sqflite_darwin.zip",
            checksum: "3ca6884998fb5ad91aa80f3fe1be4266ea0b3b8f829a9e8ffbf6348f2546925d"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.11/BinaryTargets/url_launcher_ios.zip",
            checksum: "aac4362a01f11a69633120de37ecc45db446831dfe9a5917c83ddde935316cda"
        ),
    ]
}

