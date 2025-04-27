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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/App.zip",
            checksum: "e1f42673a28c0c0cccf1ea965c12a4b8604ec387aa6e0d3cf310f3022c0bcc73"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/cupertino_http.zip",
            checksum: "b77bd2ce01714066be19dbde3996ee4df5d00b9febc95bcba528591e24b249ef"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/device_info_plus.zip",
            checksum: "a52237cc951b264fa38968d6f1147b22d49db6ad6f8b907a5fe4de7d493a5573"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "9f737583885d8d9385b69f1f69ea5dc7d2ca40e8bb4bfda538703af236a90342"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "4711ec0b6ecd5a70b6ddfc561faad2dcf9fb0f6086154a88781f540b9da4b12c"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/Flutter.zip",
            checksum: "ae07eb3c0cc68b8691db9afba18d676177b1005cfc4ca2aa5d30078b924fe8a7"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "8bdab29348a89ad8d01fc465ead71aeb4795b4e2cfa64522aefce63c994ea59c"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/fluttertoast.zip",
            checksum: "796be00eb7836590283357499e950dce9960bcdf6d49515c1a72f5c012d33efc"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/objective_c.zip",
            checksum: "13b7c107ebb56ef7948c34c99fafb3585750a713d91afce994af5e10a00443b1"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/OrderedSet.zip",
            checksum: "5a95355eaf772cb8e464fc5f753c89fef8d69b24c234202c168fcc5dd6a234c2"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/package_info_plus.zip",
            checksum: "3ace9dc2e2b4bede09be415d75032aad050c30eb92a44d081feb429904fb2c6f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "9244c4b60b72ca87420a77242b82e8466572303ab8e051b68e0b00ca9f3872ed"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "89825171d731c9e3cf15ca1e1238f65babe25fbf5a1c12a1eaf5ef46ef0f9562"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "12761690426ba8037bc886311a0beb022784c089783ea674a59bac55a39d6c28"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "fec66590c65317180aefd53b4b06ace127db52feef0c7caa9e73d055936ec810"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "fa0c54764d4df309a00c6d680ee1bd0f35fa0ebda32f699fac2636e20ba26c6f"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.5.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "479f9ab9603f588faebbc5624d933a84163adbfe14be7a2b28f8eab15932603c"
        ),
    ]
}

