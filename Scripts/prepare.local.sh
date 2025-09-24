#!/usr/bin/env bash

DEBUG_LOCAL_TARGET_STRING=""
PROFILE_LOCAL_TARGET_STRING=""
RELEASE_LOCAL_TARGET_STRING=""

FRAMEWORK_PATTERN=""
if [ "$ONLY_RELEASE_TARGETS" != "true" ]; then
    FRAMEWORK_PATTERN="Build/Cache/ReclaimXCFrameworks/**/*.xcframework"
else
    FRAMEWORK_PATTERN="Build/Cache/ReclaimXCFrameworks/*.xcframework"
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

        APPLE_DEVELOPMENT_SIGNING_IDENTITY="$(security find-identity -v -p codesigning | grep "Apple Development:" | head -n 1 | awk '{print $2}')"
        if [ -z "$APPLE_DEVELOPMENT_SIGNING_IDENTITY" ]; then
            echo "Error: No Apple Development signing identity found in the keychain. To check available, try running: security find-identity -v -p codesigning | grep \"Apple Development:\""
            exit 1
        fi
        codesign --timestamp -v -f --sign "$APPLE_DEVELOPMENT_SIGNING_IDENTITY" "$framework_path"
        echo $(codesign -dv "$framework_path")
        echo $(codesign -vv "$framework_path")

        target_name=""
        if [[ -e "$build_type" && "$ONLY_RELEASE_TARGETS" != "true" ]]; then
            target_name="${framework_name}-${build_type}"
        else
            target_name="${framework_name}"
        fi
        echo "Target name: $target_name"
        TARGET_STRING="
        .binaryTarget(
            name: \"${target_name}\",
            path: \"${framework_path}\"
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

echo "// swift-tools-version: 5.8
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
                \"ReclaimInAppSdk\"
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
        )
    ] + sdkTargets
)

$SDK_TARGET_FN_STRING
" > Devel/Package.swift.local
