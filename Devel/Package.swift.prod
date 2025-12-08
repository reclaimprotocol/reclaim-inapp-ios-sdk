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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/App.zip",
            checksum: "2cd995e72d382bfb1d7b99da75bcee83dc05c970fc665e87bf43676b3af1002f"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/cupertino_http.zip",
            checksum: "7a92130a11f493b69cd88c8f495b16ec3fe762a005e50772df4008092dac7a7a"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/device_info_plus.zip",
            checksum: "218bbad9761d20f8b0252408407ac26c29d8fb1fa2f5cf73f7dfa491b28f4a02"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "1e9d948f51c8cc27b46b3cbd7353bffaff642d85bc6398c0523e454ba5fb0bfc"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "171c9f306a372c60b7afbb64900eb725159dff351a21e119ace729dbedd2a256"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/Flutter.zip",
            checksum: "3db82aeefeebce646e57aa2fbadc63b9624add708d614e17e85f2e580d9bdb92"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "c8d23de4fbf13d3212aedd403015849b93fce864a0609d39f7eae483d0519ed0"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/fluttertoast.zip",
            checksum: "e0390df3e16846975234bdbbc0f3f88dbde44e57a9d67ccace398741d3afb935"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/objective_c.zip",
            checksum: "9d05fd21b2fa16784be94334f7f58289109564171fddcafcc3beefd8c2be3936"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/OrderedSet.zip",
            checksum: "858e399c7dcd7d48427cb90a55f0eb7e19e18a56122d86aafb0a7ce9ca2f9c05"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/package_info_plus.zip",
            checksum: "2661883eb4ba33996e836017ed57bcfcdab255f9011d1dbd1ba81d0ec0e47eee"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "6450ee5e6ff72a7eb17325fe85edd150e39526c89f84dc313100e6467ded5dbd"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "a94393fb9af31b990da0a7f48070c1a1ed70d396588eeecd33fd6feee36bb13e"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "fb7b2b0aa5637123138b8f8f14fb0650d762d85a84f28af58bb01aed62e101e4"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/rive_native.zip",
            checksum: "b7c18f3c05db5c27527c54ab2104af4bae70441347f8c561d1429371f97e496c"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "80c5d5ee5206bcfee300b7691522fb1a68f9465c2e9f146567e21d1751950602"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "eca8d30b2aa3d2a5d6221aff0acb9821bfb0fc775d69b1ef486e1b75e54962bc"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.25.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "ed37f940a4296fc4130f4f2609c3913224b778f1a5c5d2efbc732092a8b31883"
        ),
    ]
}

