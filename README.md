# Reclaim InApp SDK

This SDK allows you to integrate Reclaim's in-app verification process into your SwiftUI application.

## Prerequisites

- An iOS application source code (Support for iOS 13 or later).
- An iOS device running iOS 13 or later.
- A Reclaim account where you've created an app and have the app id, app secret.
- A provider id that you've added to your app in Reclaim Devtools.

## Example

- See the [Reclaim Example - SwiftUI](Examples/SwiftUIExample/README.md) for a complete example of how to use the SDK in a SwiftUI application.
<!-- Under development -->
<!-- - See the [Reclaim Example - UIKit](Examples/StoryboardExample/README.md) for a complete example of how to use the SDK. -->

## Installation

### 1. Adding Reclaim InApp SDK to your Xcode Project

#### When working with an Xcode project:

Copy the following URL and paste it for a dependency into the Xcode project:

```
https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git
```

#### When working with a Swift Package Manager manifest:

Either select a package version:

```
.package(url: "https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git", from: "0.1.0")
```

Or select the main branch:

```
.package(url: "https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git", branch: "main")
```

##### Select a product:

- ReclaimInAppSdk

```
.product(name: "ReclaimInAppSdk", package: "ReclaimInAppSdk")
```

### 2. Add Reclaim's XCFrameworks to your Xcode Project

Run the following script to download Reclaim's XCFrameworks in your Xcode Project directory's root (The parent directory where your `.xcodeproj` is located).

```
bash <(curl -s https://raw.githubusercontent.com/reclaimprotocol/reclaim-inapp-ios-sdk/refs/heads/main/Scripts/download_frameworks.sh)
```
