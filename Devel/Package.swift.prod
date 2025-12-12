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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/App.zip",
            checksum: "75ab45cc54e7d0473b79657815091a733a65961091cd9f17816a91ef0a525f69"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/cupertino_http.zip",
            checksum: "bd548d6aedd1573e4a3f2be853babbd683168a86d604d4e81e44443f3175dd9d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/device_info_plus.zip",
            checksum: "d3b5a0f630aa8a3f7aa15db59ab6660d9714c95016b0f0c46816e00cea034e4e"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "96dda882e9dd41800933b1f982943392bee03b8c3187da379cf9ec82195853c7"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/flutter_secure_storage.zip",
            checksum: "1a4c0be6384117d677ecf80ed5c876a621a56d35082dbd9073ea24ed895a8f89"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/Flutter.zip",
            checksum: "07354ed0a7a412c04d246c88ac2be5bc8fe42bb6e1b323ed62d3efe6dbfe3a8f"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "f7927d49aeccd0c34bdadece5a078ede67eb13080d42277e7be8102db846e69c"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/fluttertoast.zip",
            checksum: "8da6dec93da53165eeb74651d722b992d590c08270f7a3a9d76e4a423d5c7f1d"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/objective_c.zip",
            checksum: "09b32b646048e889993ad29aa1ea4406851983bf6bc76fdab45c951280b7dc86"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/OrderedSet.zip",
            checksum: "ad811758a57d074342b1ecda2c4465f90f77fac863549cd7d7a9f56a1b4277cd"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/package_info_plus.zip",
            checksum: "4f42a4553d584cbff10690ba10e57f5b83fefc72689375c07e85dc1d3b89c596"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "cb8294bb2d82442c44c2dc725fcf7e82ac2d726cddd8e61c672d3bcac75f918f"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "e7fe7d16cd665dc70743dc5fe24a795bf4b8477db00816b0cd452e19a7a1ec2f"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "1e1a3b885679031b9199dfb79029941c721190ba66a655127c45e3a96c15aaec"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/rive_native.zip",
            checksum: "bd1446752e301fb06cc1cd4113d629375b6cf9ca9f902cf76b80005e5203b010"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "66031672282965ed8a5a19213c9b158466ce44205da51d47a5205a574539cced"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "9b4027234caf37f3db5735fb16956cd9cd768a18d71c57d5969eb52c5fdf01bf"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.27.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "0f8d0f69616c3aef6754d1e3b5d98a5c98c8476bf83a069d4c7536b70e32c6d5"
        ),
    ]
}

