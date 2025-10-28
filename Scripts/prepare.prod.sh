#!/usr/bin/env bash

set -e;

RECLAIM_SDK_VERSION=$(cat Sources/ReclaimInAppSdk/Resources/InAppSdk.version)

DIST_DIR="Build/${RECLAIM_SDK_VERSION}/BinaryTargets"
mkdir -p $DIST_DIR
REMOTE_FRAMEWORK_URL="https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/${RECLAIM_SDK_VERSION}/BinaryTargets"

DEBUG_LOCAL_TARGET_STRING=""
PROFILE_LOCAL_TARGET_STRING=""
RELEASE_LOCAL_TARGET_STRING=""
FRAMEWORK_URLS_STRING=""

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

        target_name=""
        if [[ -e "$build_type" && "$ONLY_RELEASE_TARGETS" != "true" ]]; then
            target_name="${framework_name}-${build_type}"
        else
            target_name="${framework_name}"
        fi
        echo "Target name: $target_name"

        framework_zip_path="$(realpath $DIST_DIR)/${framework_name}.zip"

        # Remove existing zip if it exists
        rm -f "$framework_zip_path" 2>/dev/null

        # Zip the framework
        (cd "$(dirname "$framework_path")"; zip -r "$framework_zip_path" "$(basename "$framework_path")")

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

        FRAMEWORK_URLS_STRING+="
        '${framework_url}',"

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
" > Devel/Package.swift.prod

echo "# GENERATED FILE, DO NOT EDIT BY HAND
Pod::Spec.new do |s|
    s.name              = 'ReclaimInAppSdk'
    s.module_name       = 'ReclaimInAppSdk'
    s.version           = '${RECLAIM_SDK_VERSION}'

    s.summary           = 'The official Reclaim InApp SDK for iOS.'

    s.description       = <<-DESC
                          ReclaimInAppSdk is a quick and secure way to integrate with
                          the Reclaim Protocol API. ReclaimInAppSdk is an embeddable framework
                          that handles Reclaim Verification's Claim Creation and Claim Submission.
                          DESC

    s.homepage          = 'https://docs.reclaimprotocol.org/inapp-sdks/ios'
    s.license           = { :type => 'MIT', :file => 'LICENSE' }
    s.author            = 'Reclaim Protocol'
    s.source            = { :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :tag => s.version }

    s.platform          = :ios, '14.0'
    s.swift_version     = '5.8'

    # Ensure developers won't hit CocoaPods/CocoaPods#11402 with the resource
    # bundle for the privacy manifest.
    s.cocoapods_version = '>= 1.12.0'

    s.source_files      = [ 'Sources/**/*.{h,m,mm,cpp,swift}' ]

    s.resources = ['Sources/ReclaimInAppSdk/Resources/*.{version}']
    s.resource_bundle = {
        \"#{s.module_name}_Privacy\" => \"Sources/#{s.module_name}/Resources/PrivacyInfo.xcprivacy\"
    }

    s.pod_target_xcconfig   = {
        'SWIFT_VERSION' => '5.0',
        'VALID_ARCHS' => 'x86_64 arm64',
        'DEFINES_MODULE' => 'YES',
        # Flutter.framework does not contain a i386 slice.
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    }

    xcframework_urls = [$FRAMEWORK_URLS_STRING
    ]

    # Prepare command to download and unzip XCFrameworks
    s.prepare_command = <<-CMD
        rm -rf ReclaimXCFrameworks # clear older xcframeworks
        rm -rf Build/PodCache
        mkdir -p Build/PodCache
        # Downloads and unzips the XCFrameworks on every pod install. Needs improvement.
        #{xcframework_urls.map { |url| \"curl -L '#{url}' -o \$(basename '#{url}') && unzip -q -o \$(basename '#{url}') -d ./Build/PodCache && rm \$(basename '#{url}')\" }.join(\"\n\")}
    CMD

    # Specify the paths to the unzipped XCFramework directories
    s.vendored_frameworks = ['Build/PodCache/*.xcframework']
end
" > Devel/podspec.prod
