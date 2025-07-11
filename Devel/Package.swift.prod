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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/App.zip",
            checksum: "955479a13218eaee97cdaa230db96fb1cc9815656406caf237fc23d16252db88"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/cupertino_http.zip",
            checksum: "405743256421e53d00c8fddb7488e1398592beccee5764c70bcc4642e5ef1962"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/device_info_plus.zip",
            checksum: "6a241f96272c691d701d33a5bc929184bcda46a0cf5ddc72e06a3f141730fb02"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "3bb2f7f56ca725096b155d3590ac7fd0722263219f1c3a0645ccb91081f112f9"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/flutter_secure_storage.zip",
            checksum: "ee17f91cfe76ac3fa5c17935fee5917ee384e425b3b1a56b508f8dd88dc464f3"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/Flutter.zip",
            checksum: "9eb45c9634e338ae33006f5ca6951e7dbc1452dc553c3b2e31cfb30bf8dc6b1d"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "c2064bfc0d04bb7ad0e7641098ab815411d123f569bc036ca7fecd1afd16d7e8"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/fluttertoast.zip",
            checksum: "7e1995c69e54bd20fd0f42b5e28bf40d1a7ae3346171bb5c12d83c9e10825a92"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/objective_c.zip",
            checksum: "5613785b9c6656a08f3f51accdd06d913d2d31ca37ed1f165aa61f683b1cccae"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/OrderedSet.zip",
            checksum: "d03cd5d2cb23e0357a553e22ae54a57155c9d585679b36d71fa9c121c2eb6b2a"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/package_info_plus.zip",
            checksum: "738c1f4efa5cd9ef840bc463665c5349eb3b82e04203a4bd0175f8e26ddbcca3"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/path_provider_foundation.zip",
            checksum: "3ac03b2dcec355ed4c8ec0aa4727382d72e2b7ce27c945335d0f360dc5c2cad6"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/permission_handler_apple.zip",
            checksum: "2cc3c4f11041a35bbc5ef8b48d98909c3f93f2a5c3a606b807f63985e6610164"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "2cd7048ec9cddaa66445374e6ec435c6cd3d063336c4034581ebb2074c16000a"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "94bdc8661beb455c7d0c0b5bb021378b8d6eb8bb0af380ffe996ddace2ac8d9f"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/sqflite_darwin.zip",
            checksum: "440a45d37f3a23f925aab08f536b34065f4dbd247909054a47cfe0513ed058b4"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/url_launcher_ios.zip",
            checksum: "66b32740403fcc1c247b05797f2d12aff665e9832295b807a44baef996e36338"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.10.4/BinaryTargets/webview_flutter_wkwebview.zip",
            checksum: "449fe6af96873fa30bdd7634c0fd270254f56519786d3953d0c95f33f47485eb"
        ),
    ]
}

