#!/usr/bin/env bash

mkdir -p Dist

cd Dist

export SKIP_XCODE_PROJECT=true
# bash ../Scripts/download_frameworks.sh

# Zip each XCFramework and compute checksums

mkdir -p BinaryTargets
REMOTE_FRAMEWORK_URL="https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/1.0.0/BinaryTargets"
# REMOTE_FRAMEWORK_URL="http://localhost:8000/BinaryTargets"

TARGET_NAME_LIST=""

TARGET_STRING=""
LOCAL_TARGET_STRING=""

for framework in ReclaimXCFrameworks/*.xcframework; do
    if [ -d "$framework" ]; then
        framework_name=$(grep -oE -m 1 '<string>[^<]*\.framework</string>' $framework/Info.plist | sed -E 's/<string>(.*)\.framework<\/string>/\1/')
        echo "Framework name: $framework_name"
        framework_zip_path="BinaryTargets/${framework_name}.zip"
        # Remove existing zip if it exists
        # rm -f "$framework_zip_path" 2>/dev/null
        
        # # Zip the framework
        # zip -r "$framework_zip_path" "$framework"
        
        # Compute and display checksum
        echo "Checksum for ${framework_name}.zip from:"
        framework_checksum=$(swift package compute-checksum "$framework_zip_path")
        echo "$framework_checksum"
        TARGET_STRING+=".binaryTarget(
            name: \"${framework_name}\",
            url: \"${REMOTE_FRAMEWORK_URL}/${framework_name}.zip\",
            checksum: \"${framework_checksum}\"
        ),
        "
        LOCAL_TARGET_STRING+=".binaryTarget(
            name: \"${framework_name}\",
            path: \"$(pwd)/${framework}\"
        ),
        "
        TARGET_NAME_LIST+="\"${framework_name}\","
    fi
done

echo "
products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
        name: "ReclaimInAppSdk",
        targets: [$TARGET_NAME_LIST])
],
targets: [
    $TARGET_STRING
]
" > BinaryTargets/Install.md

echo "
$LOCAL_TARGET_STRING
" > BinaryTargets/Local.md
