# Reclaim InApp SDK

This SDK allows you to integrate Reclaim's in-app verification process into your SwiftUI application.

## Prerequisites

- An iOS device running iOS 13 or later
- A Reclaim account and API key
- A Reclaim verification URL or atleast these credentials: app id, app secret, and provider id

## Example

- See the [Reclaim Example - SwiftUI](Sample/ReclaimExampleSwiftUI/README.md) for a complete example of how to use the SDK.
- See the [Reclaim Example - UIKit](Sample/ReclaimExampleStoryboard/README.md) for a complete example of how to use the SDK.

## Installation

### When working with an Xcode project:

Copy the following URL and paste it for a dependency into the Xcode project:

```
https://gitlab.reclaimprotocol.org/integrations/offchain/reclaim-inapp-sdk-ios.git
```

### When working with a Swift Package Manager manifest:

Either select a package version:

```
.package(url: "https://gitlab.reclaimprotocol.org/integrations/offchain/reclaim-inapp-sdk-ios.git", from: "0.0.1")
```

Or select the main branch:

```
.package(url: "https://gitlab.reclaimprotocol.org/integrations/offchain/reclaim-inapp-sdk-ios.git", branch: "main")
```

#### Select a product:

##### ReclaimInAppSdk

```
.product(name: "ReclaimInAppSdk", package: "ReclaimInAppSdk")
```