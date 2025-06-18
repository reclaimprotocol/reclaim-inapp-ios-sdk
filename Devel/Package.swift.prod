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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/App.zip",
            checksum: "6dee38eea012638fe438c972d1800135e132b2ca0602cd7964eac7c7e603b33d"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/cupertino_http.zip",
            checksum: "4570c9d7171237a100d77de1022c7c77b21c0fe0ecb654b3dc4ee0614b3e467a"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/device_info_plus.zip",
            checksum: "87d4802b60d00291f1f19e423f6058079879d0432c6f2f9bc05a755e2af19e7a"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "21cf046912b39abda04f277f1427231d556372deec48771a6846bed267a6e81a"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/flutter_secure_storage.zip",
            checksum: "7a363ab36a251335af284fbac830ff07214c86d703938711c77ccd9d0b4ccb1c"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/Flutter.zip",
            checksum: "742d0f484839adaeed3684fa75d953a9f28136c6ad5fdd22b39c122711c2b34c"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "8dbe8a4869bf3b821e65fbef827e6e51646bea1aa57f4ae8950f4e4904aeb2b5"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/fluttertoast.zip",
            checksum: "0d56445944f660ac3f94df7fd05354c0f08094d273127d76b82ce890a28d85b4"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/objective_c.zip",
            checksum: "7b6719f88d8f0f5190821f19366faa907bec50f46834f56e29c4cb6cc4715550"
        ),
        .binaryTarget(
            name: "OrderedSet",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/OrderedSet.zip",
            checksum: "8e14a1fd2b91c340b50fa3b55266819d9c2e71b0155b5505a7bb0dc8c82d6132"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/package_info_plus.zip",
            checksum: "684111f7db54ee57ae1d7fea1e4d94d73dbf334450e9cdd02d0dd7b276ffffb4"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/path_provider_foundation.zip",
            checksum: "19fb5ddfc319acb76fe39fcf7ddc98a2192ff592dc6dfe4404b0d630123b23d0"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/permission_handler_apple.zip",
            checksum: "a521275350744ea86ef4743d91f720bffea9a6aee2bba24f8d90e2c37fb8cc2e"
        ),
        .binaryTarget(
            name: "reclaim_gnark_zkoperator",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/reclaim_gnark_zkoperator.zip",
            checksum: "7e5a7cf0e77629e8c138fbbc7c60f7d1097098257e0896aa4801695c6f4ae063"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "10b7bcdcdc9ca52c9c7b749ee12089075cf5d8eb92d0000c07f0963475e16e11"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/sqflite_darwin.zip",
            checksum: "d077602f4fbdfce595a55db70160520bb3938bafcc40c1ba0c31e9d74de25024"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.9.1/BinaryTargets/url_launcher_ios.zip",
            checksum: "bb0155b823a87d5cfd31358d4c45faba8ab77d938e148ea772de25440b5e3907"
        ),
    ]
}

