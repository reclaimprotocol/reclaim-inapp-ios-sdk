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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/App.zip",
            checksum: "5810f0b69ccf4f4203805db7bb152bd12f0df4b9904b929920e44a87a8db4d5b"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/Collections.zip",
            checksum: "9be07166b47bf2d68a20092fac4b2fc5c4cc3f3b0e3ba4cae9f47dbebd9a4bbb"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/cupertino_http.zip",
            checksum: "e62c3110d84bd8242103a956df2cbabfebe2fc0fb03166e66e21443d47a712b6"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/device_info_plus.zip",
            checksum: "9bf2ad5350424720fba1ff3489e40254136ce0b241016975cf8b00c31198dedc"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "3f27866ed4e65a219280a34cb046eb14eb36a658ebfbf887420d2887a08727ab"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "cf172035633302cfdad8033a33697dee9886eae21eba5cddbefd158bda1bb1f9"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/Flutter.zip",
            checksum: "1a4e9c2eb04740a6bdae33c9987141273d09f4be3c72c9f894a242ad2b79a8f7"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "bae31ba401faa684c47bd4ca56906f5fe3c33d1154979e5b13a91d1cb0942d8e"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/fluttertoast.zip",
            checksum: "5c9b4400bb5f4534d1546ac8976faa3b93f68017fece61c763d50e3c1448caa2"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "bf4ac4b48c1574bde459099179cfc3ec63c293bac75064b8349991b265892412"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/libreclaim.zip",
            checksum: "af77cd1b03efdd4bafce0b97d32a7cee14c196f8b01d274bc5575f3d8e52fb91"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/objective_c.zip",
            checksum: "87413b711583737026f7ae870905bb8e11e71a8fd07f876e1521f890012a0549"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/package_info_plus.zip",
            checksum: "f7fb1ebfb6ca9fb64b0fa0d4a6c3e1d2f425d28b3a1f2f7190bc401f9c5c19bd"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/path_provider_foundation.zip",
            checksum: "f0356e722e4efa01a42e4b48e4f19f04721b8257e5d731dbe229658b06575c85"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "4b2d5874159d92ccb5b5dec3e06206ad85fa4e38f78440b748f871bad7dfcb45"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "c8f8b037ac771d6d48fb8b7b723e9168b5e0b621dd0f1abd3ccbe61a68f74920"
        ),
        .binaryTarget(
            name: "reclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/reclaim.zip",
            checksum: "65ded4d35efde31710975283191879e4996c490465f2673cac116877ae3c71c5"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/rive_native.zip",
            checksum: "dde9e78630cf6a7618e036dae15c56d1c4ec41c4cc770b18a651663ce0148fa5"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "9f56197499478ec01d8bc64f62e2ce0e774b6200992add973e9b1eaa24b13200"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "4f79a356409f1bb871342041d30534ba8066b2e6055887d767aa52d9eab63b49"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.40.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "82e16a1af4ddaf6441bc00c817a5b46469e3fd85979abea30441f7d15ce0987b"
        ),
    ]
}

