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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/App.zip",
            checksum: "c745ab9d1513ae8b2b696e35f8fde70198cd6567ddb2b5763bcc2b9ab142f9bf"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/Collections.zip",
            checksum: "a938f86437ae0308a26bf72e324b224a7d31b0ac0fc998dbc70ad2325491ffdc"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/cupertino_http.zip",
            checksum: "69a9b818ba63742788d8cc63bc53e663e4e983eec1652b0dfe5de0402297cb3e"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/device_info_plus.zip",
            checksum: "38e023b2e28456a9dacdf8785e33ff0a2273e9508f50f851770d032bc4bf7962"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "3431c93f17db8e901c420852ba1307c60f19de6d3b81869598a901b281037439"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "329b13b069eb3087a3f10fd42eb647cf64c84b2c97d96adff6738dafb5320999"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/Flutter.zip",
            checksum: "e4d64a3a906acf2a4e897f835839ecf490386b818cfd0c151aef099a5d42a37d"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "73a439d43dea83133efd12664152b9e9c6cedb1d34312ee67bbe39b8a5ebe381"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/fluttertoast.zip",
            checksum: "07a836645a817a648e26d4f8b9c4eb574547321f379038f977e9193a5f9e5ccd"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "524503cd48242f5f7064f07965fdfd7cd1d16957af5de10da4142a8a8a31e8ca"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/libreclaim.zip",
            checksum: "b1654802e0ffe023a80cb07c90d9d43c4ee146a317c5cd4298089ea011019dbd"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/objective_c.zip",
            checksum: "4cc1e1bf3e30494493dcf3f07ec14ab1a00d50fb339444bc672f90036263220e"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/package_info_plus.zip",
            checksum: "6d1181b80d156dc70f84b029a8c7427fae0546a0c7ebf3be9e58c525bb41c115"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "96b770b686448950ceab12a671ef01859646ce875d6e8dfec2c2d1747a8fc104"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "14aa4f02c24e7e6a0e0746d5df5f4e22f75f6e4455c7ac6240db148130808253"
        ),
        .binaryTarget(
            name: "reclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/reclaim.zip",
            checksum: "1a3e9e0b82ffa8d1dbd8eca519e2e50932ab274951a10145b3eafed0c1cbb057"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/rive_native.zip",
            checksum: "ea1726a78e35ed387270fe1f6849a65afd26e82711d5d200dfc548de29f320b1"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "e9fc1b485035ef811ac4eb3f434acaf284218488a3c66a84f864e2fe388d4bb5"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "7dc6040111d2b0e35ad358db5251785c647d5a1b83e99b95288dc5909c73bfc4"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.42.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "ddd2ea6bebb0118d7dda3e33f463bc1182a3585ee97863acf4a44d1e0513e99e"
        ),
    ]
}

