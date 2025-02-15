#!/usr/bin/env bash

RECLAIM_SDK_VERSION=$(cat Sources/ReclaimInAppSdk/Resources/ReclaimInAppSdk.version)

DIST_DIR="Dist/${RECLAIM_SDK_VERSION}/BinaryTargets"
mkdir -p $DIST_DIR
REMOTE_FRAMEWORK_URL="https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/${RECLAIM_SDK_VERSION}/BinaryTargets"

DEBUG_LOCAL_TARGET_STRING=""
PROFILE_LOCAL_TARGET_STRING=""
RELEASE_LOCAL_TARGET_STRING=""

FRAMEWORK_PATTERN=""
if [ "$ONLY_RELEASE_TARGETS" != "true" ]; then
    FRAMEWORK_PATTERN="ReclaimXCFrameworks/**/*.xcframework"
else
    FRAMEWORK_PATTERN="ReclaimXCFrameworks/*.xcframework"
fi

for framework_path in $FRAMEWORK_PATTERN; do
    if [ -d "$framework_path" ]; then
        framework_name=$(grep -oE -m 1 '<string>[^<]*\.framework</string>' $framework_path/Info.plist | sed -E 's/<string>(.*)\.framework<\/string>/\1/')
        build_type=$(basename $(dirname "$framework_path"))
        if [[ "$build_type" != "Debug" && "$build_type" != "Profile" && "$build_type" != "Release" ]]; then
            build_type=""
            framework_name=$(basename "$framework_path" .xcframework)
        fi

        echo "Framework name: $framework_name"
        echo "Framework path: $framework_path"
        echo "Build type: $build_type"

        target_name=""
        if [[ -e "$build_type" && "$ONLY_RELEASE_TARGETS" != "true" ]]; then
            target_name="${framework_name}-${build_type}"
        else
            target_name="${framework_name}"
        fi
        echo "Target name: $target_name"

        framework_zip_path="$DIST_DIR/${framework_name}.zip"

        # Remove existing zip if it exists
        rm -f "$framework_zip_path" 2>/dev/null

        # Zip the framework
        zip -r "$framework_zip_path" "$framework_path"

        # Compute and display checksum
        echo "Checksum for ${framework_name}.zip from:"
        framework_checksum=$(swift package compute-checksum "$framework_zip_path")
        echo "Zip path: $framework_zip_path"
        echo "Zip Checksum: $framework_checksum"
        framework_url="${REMOTE_FRAMEWORK_URL}/$(basename $framework_zip_path)"

        TARGET_STRING="
        .binaryTarget(
            name: \"${target_name}\",
            url: \"${framework_url}\",
            checksum: \"${framework_checksum}\"
        ),"

        case $build_type in
            Debug)
                DEBUG_LOCAL_TARGET_STRING+="$TARGET_STRING"
                ;;
            Profile)
                PROFILE_LOCAL_TARGET_STRING+="$TARGET_STRING"
                ;;
            Release)
                RELEASE_LOCAL_TARGET_STRING+="$TARGET_STRING"
                ;;
            *)
                RELEASE_LOCAL_TARGET_STRING+="$TARGET_STRING"
                ;;
        esac
    fi
done

SDK_TARGET_FN_STRING=""
if [ "$ONLY_RELEASE_TARGETS" != "true" ]; then
SDK_TARGET_FN_STRING="func getSdkTargets() -> [Target] {
    #if DEBUG
    return [$DEBUG_LOCAL_TARGET_STRING
    ]
    #elseif PROFILE
    return [$PROFILE_LOCAL_TARGET_STRING
    ]
    #else
    return [$RELEASE_LOCAL_TARGET_STRING
    ]
    #endif
}"
else
SDK_TARGET_FN_STRING="func getSdkTargets() -> [Target] {
    return [$RELEASE_LOCAL_TARGET_STRING
    ]
}"
fi

echo "// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// GENERATED FILE, DO NOT EDIT BY HAND

import PackageDescription

let sdkTargets = getSdkTargets()
let sdkTargetNames = sdkTargets.map { \$0.name }

let package = Package(
    name: \"ReclaimInAppSdk\",
    defaultLocalization: \"en\",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: \"ReclaimInAppSdk\",
            targets: [
                \"ReclaimInAppSdk\",
            ] + sdkTargetNames
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: \"ReclaimInAppSdk\",
            resources: [
                .process(\"Resources\")
            ]
        ),
        .testTarget(
            name: \"ReclaimInAppSdkTests\",
            dependencies: [\"ReclaimInAppSdk\"]
        ),
    ] + sdkTargets
)

$SDK_TARGET_FN_STRING
" > Devel/Package.swift.prod
