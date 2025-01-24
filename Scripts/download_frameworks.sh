#!/usr/bin/env bash

# has .xcodeproj file
XCODE_PROJECT_FILE="$(ls | grep .xcodeproj)"
if [ ! -d "$XCODE_PROJECT_FILE" ]; then
    echo "❌ Not a valid Xcode Project Directory. No '*.xcodeproj' directory found. 
Make sure you are running this script in the correct Xcode Project directory. (The parent directory where your '.xcodeproj' is located)"
    exit 1
fi

echo "✅ Valid Xcode Project Directory"

# URL of the zip file - replace with your actual URL
DOWNLOAD_URL="https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/v0.1.0/ReclaimXCFrameworks.zip"
TEMP_ZIP="ReclaimXCFrameworks.zip"
TARGET_DIR="ReclaimXCFrameworks"

# Create a temporary directory for downloading
echo "📦 Downloading ReclaimXCFrameworks..."
curl -L "$DOWNLOAD_URL" -o "$TEMP_ZIP"

if [ $? -ne 0 ]; then
    echo "❌ Failed to download frameworks"
    exit 1
fi

# remove existing target directory
rm -rf $TARGET_DIR

# Unzip the file
echo "📂 Extracting frameworks..."
unzip -o "$TEMP_ZIP"

if [ $? -ne 0 ]; then
    echo "❌ Failed to extract frameworks"
    rm -f "$TEMP_ZIP"
    exit 1
fi

# Clean up the zip file
rm -f "$TEMP_ZIP"

RECLAIM_INVALID_FILE_NAME="$(ls | grep reclaim_inapp_sdk)"

if [ -n "$RECLAIM_INVALID_FILE_NAME" ]; then
    echo "🔥 Renaming directory"
    mv "$RECLAIM_INVALID_FILE_NAME" $TARGET_DIR
fi


echo "✅ Frameworks downloaded and extracted successfully"
