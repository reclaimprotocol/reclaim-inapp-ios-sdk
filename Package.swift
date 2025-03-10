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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/App.zip",
            checksum: "b5e45005375060bd064710a25ecdc3bfdd80cc52dfa4eb36439721f91ee0d88b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/Flutter.zip",
            checksum: "de848d4dcce261069083d62a830693092ffb3be4d688af94b44439821e624444"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "925e2e8bed99fd3031bc5c4ce68d587498d83de00f067b4dc17d7306fd915bc2"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/OrderedSet.zip",
            checksum: "8f17e3bd9a1ae51f2cf3f452bc98ea58bc08801d6436561c6429a40db9db4d47"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/cupertino_http.zip",
            checksum: "ab02ef627f5c8558fe670738d07a0e6e736bb8d694a194ffbea017c8292fa436"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/device_info_plus.zip",
            checksum: "9a9a7e7f7728f63cfcd11feaac9672c8066b8648b298c4fbbef6cc28d740b3e6"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "065ebaff53d7eec93a21511d86c0e4c3c1a661b69befa3291cece1db7f84f490"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "fbdd4383b852e8683cdf1a3794812cde4dde4f86c613a242dc301a0241e03a3e"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/fluttertoast.zip",
            checksum: "ae062318f850138b866e0626a591bcb71c68e3473621ab63950afa819038e5d8"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/objective_c.zip",
            checksum: "35f72de9f94d5de48ca91c8b313c080cf284620d1d2444f8ded2efa203c4c571"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/package_info_plus.zip",
            checksum: "510e0e734441775d592940d888d05955c623aad28d71a55a141a51108076f7e2"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "108cd4919270a9c628cddce7933c541c5e8df7e58969e00dac8f27608940b781"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "70462b4ca66c65f3cbb8009ab12a4463c30932f5adcb6f7cd692113ff3d98800"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "4e64a6ff3e5c0483e8bffe22366b3ed0e9e49c480f310e0cabf77f2f0dce282b"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "95d6e51be80cc26268319dc450dbb6d013e673e50bf1f671a955002a039e66bd"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "63e53171cbe6d651b0d39298d89fe02780d5e867f1198135add634f9dda4e1fe"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.3.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "84d69f76316c5ce1bc44887aa161f4d2d83a4d55d79acb7c7be22b9aa332ab39"
        ),
    ]
}

