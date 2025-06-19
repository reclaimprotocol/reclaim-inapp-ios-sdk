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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/App.zip",
            checksum: "e307ac5e028d3069bc6bf3a32a9b173f896e6a062b70830dab60d455cf1e31d2"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/cupertino_http.zip",
            checksum: "2d7a1f2d0258420c8abf5035ed002cb24e525772a08659900b9c1af248dd66a2"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/device_info_plus.zip",
            checksum: "fa5aa1e62f871e5c80d458759713d0542dfde5c1921a0de193449deca8af068e"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "0e53f2a2553c431d1e416468c37584c8d1ae16bc5704239366d5696534d13c50"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/flutter_secure_storage.zip",
            checksum: "b031df66eaa93dd05ccf83066bcd08ef7ccf43adc3586498fd6cb1f815d47fbc"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/Flutter.zip",
            checksum: "2c690d82ebeb7ee1a71e9d27116bffd25558d4cd4cea024869d7216a847886de"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "be4f3fc2cd5b15d50ca40d321b04828e6e1492b48b5b3c5409166a26882c6b5e"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/fluttertoast.zip",
            checksum: "5f1d7ce1b025e26eb798b53e0747a0404ddbd4dc21c92b1ab24bc558d3f3b7e6"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/objective_c.zip",
            checksum: "dd779a4e98400dcbf5064cddf17d77987933f03936148bd4df5d1216b2999e09"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/OrderedSet.zip",
            checksum: "32c7e1050ec1097a005f8d3d685a49c09e887d8b879606b3ae3cc08b6ba1983c"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/package_info_plus.zip",
            checksum: "a5943107d2d3803f24cd912cc79e56dc423792d8c3c6a1eadd0a58315e351981"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/path_provider_foundation.zip",
            checksum: "b8137a45de41eef7a292d4065bf0214125ea8270e6229dd7fc0a134807dd890f"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/permission_handler_apple.zip",
            checksum: "35b4e0b2a24486ba961bf977cad09b7c9451236c33008ae6239c9c73467dd366"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "c085eeb3e3b5f64146b273949f4105ad2921de5eb5ecad19097bf600ed5bcc5b"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "167162fc8acae3a36101167efb08db72a01194f521519eb3b647b7881f1ce30e"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/sqflite_darwin.zip",
            checksum: "3b112ee709e53efe9911d5466385b6e9c303ae31784330a3d674c2514b31861c"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.2/BinaryTargets/url_launcher_ios.zip",
            checksum: "4eae92f37e58ab49acbfa155ac93309380af8398b361b011416c355742170f3c"
        ),
    ]
}

