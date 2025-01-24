#!/usr/bin/env bash

VERSION_FILE="Sources/ReclaimInAppSdk/Resources/ReclaimInAppSdk.version"
PODSPEC_FILE="ReclaimInAppSdk.podspec"

# Read current version
CURRENT_VERSION=$(cat "$VERSION_FILE" | tr -d '\n')

# Split version into components
IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT_VERSION"

# Function to update version in files
update_version() {
    local new_version=$1
    
    # Update version file
    echo "$new_version" > "$VERSION_FILE"
    
    # Update podspec file
    sed -i '' "s/s.version.*=.*'${CURRENT_VERSION}'/s.version           = '${new_version}'/" "$PODSPEC_FILE"
    
    echo "Version bumped from $CURRENT_VERSION to $new_version"
}

# Handle version bumping based on flags
case "$1" in
    "--major")
        NEW_VERSION="$((MAJOR + 1)).0.0"
        update_version "$NEW_VERSION"
        ;;
    "--minor")
        NEW_VERSION="${MAJOR}.$((MINOR + 1)).0"
        update_version "$NEW_VERSION"
        ;;
    "--patch")
        NEW_VERSION="${MAJOR}.${MINOR}.$((PATCH + 1))"
        update_version "$NEW_VERSION"
        ;;
    *)
        echo "Usage: $0 [--major|--minor|--patch]"
        echo "Current version: $CURRENT_VERSION"
        exit 1
        ;;
esac
