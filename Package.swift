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
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/App.zip",
            checksum: "4f09a2deae56f03a46ae936afcc7038c6b0575eb3f36f8e8e6b63e1dbef48373"
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/Collections.zip",
            checksum: "00132afff9f4e5b541be8b694e4d4e104834f4c1d4fefc82f9490968358a31ef"
        ),
        .binaryTarget(
            name: "cupertino_http",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/cupertino_http.zip",
            checksum: "e99f9e919b51b4d325f4420e3c8a5da7cc53879b95559062c021e386b0a12b98"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/device_info_plus.zip",
            checksum: "99a493293b426bdf6ab6b6b853f3df47138bc8d6fd150f77590ca4dcdbf23950"
        ),
        .binaryTarget(
            name: "flutter_inappwebview_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/flutter_inappwebview_ios.zip",
            checksum: "09a599a18e6e036f33f1168091c4e0a576190f7c1a17b371971fd39f2fceb181"
        ),
        .binaryTarget(
            name: "flutter_secure_storage_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/flutter_secure_storage_darwin.zip",
            checksum: "f9309b0be4c2836f35fb89a3d246498208600617c193a8ef1d2238e14772e948"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/Flutter.zip",
            checksum: "de329adab6e7af6adf989a4fa767761d31906157a348983b2a5438a724a462b6"
        ),
        .binaryTarget(
            name: "FlutterPluginRegistrant",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/FlutterPluginRegistrant.zip",
            checksum: "0de33cd8d2c797a7d37f26cfb1c76e8b2015eae8aa4fe02d4afb062b03f14eed"
        ),
        .binaryTarget(
            name: "fluttertoast",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/fluttertoast.zip",
            checksum: "05b864ee9941976c36897d0f879bd085ef277e2bfc57203c822beb819314ef06"
        ),
        .binaryTarget(
            name: "InternalCollectionsUtilities",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/InternalCollectionsUtilities.zip",
            checksum: "2b0912f31c5777002b806fb9d2a2c66bcca484104ee74b02ea9b5cf54eac9418"
        ),
        .binaryTarget(
            name: "libreclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/libreclaim.zip",
            checksum: "74e0eb15336b25af97d1c3d3e0c1fbdecc0085e5ef2639fe22558b8cb9755e9e"
        ),
        .binaryTarget(
            name: "objective_c",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/objective_c.zip",
            checksum: "5b64161a4c1efd4413225229247efb5acd130ae0f6900a64718f8fd109c642d3"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/package_info_plus.zip",
            checksum: "6b4cddab4104a77537ff1a877cf5817c8811072c74b017f9c678c9f2efe86389"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/permission_handler_apple.zip",
            checksum: "17006a78b0be124624fae54876ad431feff76b10e2baf73a882e71aba9a2abbc"
        ),
        .binaryTarget(
            name: "reclaim_tee_operator_flutter",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/reclaim_tee_operator_flutter.zip",
            checksum: "08b19fd0717afcdb3c567aadc22a46cf7e398301913563493f2587c04d7bc830"
        ),
        .binaryTarget(
            name: "reclaim",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/reclaim.zip",
            checksum: "4e6d56ae05dc6c9f1c79719c73b27c715e8b059ad2475e5c22bb1e5b6107e8b7"
        ),
        .binaryTarget(
            name: "rive_native",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/rive_native.zip",
            checksum: "7fe8fbf1ba6864f57187948d402961c17851fbe213d6a363fb4e98ae29fbdc22"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/shared_preferences_foundation.zip",
            checksum: "84a66cb4f69ca568af7eaec54efe25af2cc468ef226b204696e3a4137785b1ed"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/sqflite_darwin.zip",
            checksum: "d68ea51bc016f8246698d5f93b1e382cf35e82fd11eed3d43584f35b947bdd4d"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.43.0/BinaryTargets/url_launcher_ios.zip",
            checksum: "92d51795e97baabcbae31e0151b1e9fb5962a7b91cdba01245cbf48069678d3a"
        ),
    ]
}

