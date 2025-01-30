#!/usr/bin/env bash

# has .xcodeproj file
XCODE_PROJECT_FILE="$(ls | grep .xcodeproj)"
if [ ! -d "$XCODE_PROJECT_FILE" ]; then
    echo "❌ Not a valid Xcode Project Directory. No '*.xcodeproj' directory found. 
Make sure you are running this script in the correct Xcode Project directory. (The parent directory where your '.xcodeproj' is located)"
    exit 1
fi

echo "✅ Valid Xcode Project Directory"

# DOWNLOAD_URL="https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/v1.0.0/ReclaimXCFrameworks.tar.gz"
DOWNLOAD_URL="http://localhost:8000/ReclaimXCFrameworks.tar.gz"
TEMP_ARCHIVE="ReclaimXCFrameworks.tar.gz"
TARGET_DIR="ReclaimXCFrameworks"

# Create a temporary directory for downloading
echo "📦 Downloading ReclaimXCFrameworks..."
curl -L "$DOWNLOAD_URL" -o "$TEMP_ARCHIVE"

if [ $? -ne 0 ]; then
    echo "❌ Failed to download frameworks"
    exit 1
fi

# remove existing target directory
rm -rf $TARGET_DIR

# Unzip the file
echo "📂 Extracting frameworks..."

tar -xvzf "$TEMP_ARCHIVE"

if [ $? -ne 0 ]; then
    echo "❌ Failed to extract frameworks"
    rm -f "$TEMP_ARCHIVE"
    exit 1
fi

echo "Extracted frameworks"

# Clean up the zip file
rm -f "$TEMP_ARCHIVE"

RECLAIM_INVALID_FILE_NAME="$(ls | grep reclaim_inapp_sdk)"

if [ -n "$RECLAIM_INVALID_FILE_NAME" ]; then
    echo "🔥 Renaming directory"
    mv "$RECLAIM_INVALID_FILE_NAME" $TARGET_DIR
fi


echo "✅ Frameworks downloaded and extracted successfully"
