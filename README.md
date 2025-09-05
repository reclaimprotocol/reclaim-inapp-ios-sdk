# Reclaim InApp SDK

[![Documentation](https://img.shields.io/badge/read_the-docs-blue)](https://docs.reclaimprotocol.org/inapp-sdks/ios)
[![Platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Freclaimprotocol%2Freclaim-inapp-ios-sdk%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/reclaimprotocol/reclaim-inapp-ios-sdk)
[![Swift 6.0](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Freclaimprotocol%2Freclaim-inapp-ios-sdk%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/reclaimprotocol/reclaim-inapp-ios-sdk)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-green)](https://swiftpackageindex.com/reclaimprotocol/reclaim-inapp-ios-sdk)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/ReclaimInAppSdk.svg)](https://cocoapods.org/pods/ReclaimInAppSdk)

This SDK allows you to integrate Reclaim's in-app verification process into your SwiftUI application.

## Prerequisites

- An iOS application source code (Support for iOS 13 or later).
- An iOS device running iOS 13 or later.
- A Reclaim account where you've created an app and have the app id, app secret.
- A provider id that you've added to your app in Reclaim Devtools.

## Example

- See the [Reclaim Example - SwiftUI](https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/blob/53a19f88c8d90df485a60dc20190f740cd9fd108/Examples/SwiftUIExample/README.md) for a complete example of how to use the SDK in a SwiftUI application.
- See the [Reclaim Example - SwiftUI with CocoaPods](https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/blob/main/Examples/SwiftUIWithPodExample/README.md) for a complete example of how to use the SDK in a SwiftUI application with CocoaPods.
<!-- Under development -->
<!-- - See the [Reclaim Example - UIKit](Examples/StoryboardExample/README.md) for a complete example of how to use the SDK. -->

## Installation

### 1. Adding Reclaim InApp SDK to your Xcode Project

#### Method 1: When working with an Xcode project (Recommended):

Copy the following URL and use it to add Swift Package Manager (SPM) dependency into the Xcode project:

```
https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git
```

##### How to add a Swift Package Manager (SPM) dependency to your Xcode project:

1. In your Xcode Editor's toolbar, click on `File` > `Add Package Dependency...`.
<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/1.png" width="500" alt="Add a dependency to your Xcode project">
2. In the `Add Package Dependency` dialog box, paste the URL `https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git` into the `Search or Enter package URL` field on the top right corner of dialog box.
<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/2.png" width="500" alt="Add a dependency to your Xcode project">
3. Click `Add Package`.
4. In the other window, select your **app target** in the `Add to Targets` section and then click `Add package`.
<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/3.png" width="500" alt="Add a dependency to your Xcode project">

This should complete the installation of the Reclaim InApp SDK. Now follow the [steps below to link the necessary frameworks to your Xcode project](#2-add-reclaims-xcframeworks-to-your-xcode-project).

###### Note

- It's worth noting that you should commit the **swiftpm** folder that will be built and more specifically that the **Package.resolved** file should be included in your source control/git.

#### Method 2: When working with an Xcode Workspace project with CocoaPods:

1. Make sure to define a global platform for your project in your `Podfile` with version 13.0 or higher.

```
platform :ios, '13.0'
```

2. Add the following to your `Podfile` to override the default version of the ReclaimInAppSdk (optional):

- From a specific tag (recommended):

```ruby
pod 'ReclaimInAppSdk', :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :tag => '0.15.0'
```

- or from git HEAD (Alternative):

```ruby
pod 'ReclaimInAppSdk', :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git'
```

- or from a specific commit (Alternative):

```ruby
pod 'ReclaimInAppSdk', :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :commit => '184d41628026768feb703dc7bb9a3d913c6b271e'
```

- or from a specific branch (Alternative):

```ruby
pod 'ReclaimInAppSdk', :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :branch => 'main'
```

2. After adding the dependency, your podfile may look like this:

```ruby
platform :ios, '13.0'

target 'GitPodSwiftUIExample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GitPodSwiftUIExample
  pod 'ReclaimInAppSdk', :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :commit => '184d41628026768feb703dc7bb9a3d913c6b271e'

  target 'GitPodSwiftUIExampleTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'GitPodSwiftUIExampleUITests' do
    # Pods for testing
  end

end
```

3. Run `pod install`.
4. Open the `*.xcworkspace` file to work on the project. And build the project.
5. Your build may fail due to an error like this:

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/PodBuildError.png" alt="Xcode build error due to CocoaPods" width="500">

6. To fix this, open the `*.xcworkspace` file in Xcode. In your target's `Build Settings`, under `Build Options` Section, set `User Script Sandboxing` to `No` and build the project again.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/PodBuildErrorFix.png" alt="Xcode build error due to CocoaPods" width="500">

7. Your project should build successfully.

For more info, check the [Reclaim Example - SwiftUI with CocoaPods](https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/blob/main/Examples/SwiftUIWithPodExample/README.md) for a complete example of how to use the SDK in a SwiftUI application with CocoaPods.

#### Method 3: When working with a Swift Package Manager manifest:

Either select a package version:

```
.package(url: "https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git", from: "0.15.0")
```

Or select the main branch:

```
.package(url: "https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git", branch: "main")
```

##### Select a product:

- ReclaimInAppSdk

```
.product(name: "ReclaimInAppSdk", package: "reclaim-inapp-ios-sdk")
```

<!-- ### 2. Add Reclaim's XCFrameworks to your Xcode Project

Run the following script to download Reclaim's XCFrameworks in your Xcode Project directory (The parent directory where your `.xcodeproj` is located).

```bash
bash <(curl -s https://raw.githubusercontent.com/reclaimprotocol/reclaim-inapp-ios-sdk/refs/heads/main/Scripts/download_frameworks.sh)
```

#### Link all frameworks

To link the necessary frameworks, follow this procedure.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/4.png" alt="Expand the Link Binary With Libraries build phase in Xcode" width="500">

1. Choose the frameworks to link.
    1. In the **Project Navigator**, click on your project target.
    2. Click the **Build Phases** tab.
    3. Expand **Link Binary With Libraries**.
    4. Click **+** (plus sign).
    5. Click **Add Other...** then **Add Files...**.
    6. From the **Choose frameworks and libraries to add**: dialog box, navigate to the `ReclaimXCFrameworks` directory in your Xcode Project directory's root and **select all the frameworks**.
    7. Command-click the frameworks in that directory then click Open.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/5.png" alt="Choose frameworks to link from the Choose frameworks and libraries to add: dialog box in Xcode" width="500">

2. Update search paths.
    1. Again, in the **Project Navigator**, click on your project target.
    2. Click the **Build Settings** tab.
    3. Double-click to the right of **Framework Search Paths**.
    4. In the combo box, click **+** (plus sign).
    5. Type `$(inherited)`. and press `Enter`.
    6. Click **+** (plus sign).
    7. Type `$(PROJECT_DIR)/ReclaimXCFrameworks/` and press `Enter`.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/6.png" alt="Update Framework Search Paths in Xcode" width="500">

After linking the frameworks, they should display in the **Frameworks, Libraries, and Embedded Content** section of your target's **General** settings.

3. Embed the dynamic frameworks

To embed your dynamic frameworks, complete the following procedure.

    1. In the **Project Navigator**, click on your project target.
    2. Click the **General** tab.
    3. Scroll down to the **Frameworks, Libraries, and Embedded Content** section.
    4. Click on each dynamic framework and set the **Embed** option to **Embed & Sign**.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/7.png" alt="Embed dynamic frameworks in Xcode" width="500">

    5. Don't include any static frameworks, including `PluginRegistrant.xcframework`. Do not embed them. Your embedded frameworks should only be dynamic frameworks and will look like the below screenshot.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/8.png" alt="Embed dynamic frameworks in Xcode" width="500">

    6. Click the **Build Phases** tab.
    7. Expand **Embed Frameworks**. Your dynamic frameworks should display in that section.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/9.png" alt="Embedded dynamic frameworks in Xcode" width="500"> -->

#### Build the project.

1. If you have a `*.xcworkspace` then open `YourApp.xcworkspace` in Xcode. Verify that you're opening MyApp.xcworkspace and not opening MyApp.xcodeproj. The .xcworkspace file has the CocoaPod dependencies, the .xcodeproj doesn't. If you don't have a `*.xcworkspace` then open `YourApp.xcodeproj` in Xcode.
2. Select **Product** > **Build** or press `Cmd + B`.

### 2. Fixing performance issues

Your app performance will be severely impacted when you run debug executable on a physical device. Fixing this requires a simple change in your Xcode project xcscheme.

#### Method 1: Update Environment Variables for XCScheme (Recommended) 
1. Open your project in Xcode.
2. Click on the project target.
3. Click on the **Scheme** dropdown.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/10.png" alt="Edit current xcscheme in Xcode" width="500">

4. Click on the **Edit Scheme** button.
5. Click on the **Run** tab.
6. Click on the **Arguments** tab and check the **Environment Variables** section.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/12.png" alt="Enable Debug executable in Xcode" width="500">

7. Add the following environment variable:
    - Key: `GODEBUG`
    - Value: `asyncpreemptoff=1`
8. Click on the **Close** button in the dialog and build the project.
9. Run the app on a physical device.

#### Method 2: Disable "Debug executable"

This method is **not recommended** but could be useful if you don't want to add environment variables to the xcscheme.

1. Open your project in Xcode.
2. Click on the project target.
3. Click on the **Scheme** dropdown.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/10.png" alt="Edit current xcscheme in Xcode" width="500">

4. Click on the **Edit Scheme** button.
5. Click on the **Run** tab.
6. Uncheck the **Debug executable** checkbox.

<img src="https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/raw/53a19f88c8d90df485a60dc20190f740cd9fd108/Screenshots/Install/11.png" alt="Enable Debug executable in Xcode" width="500">

### 4. Use ReclaimInAppSdk in your project

To use ReclaimInAppSdk in your project, follow these steps:

1. Import the ReclaimInAppSdk module into your Swift file.

```swift
import ReclaimInAppSdk
```

2. Create a request object.

```swift
let request = ReclaimVerification.Request.params(
    try .init(
        /// You can use the appId and secret from Reclaim Devtools to create a request.
        /// Providing appId and secret here in this initializer is optional. 
        /// If you don't provide it, the SDK will use the appId and secret from the Info.plist file.
        // appId: "YOUR_APP_ID_FROM_RECLAIM_DEVTOOLS",
        // secret: "YOUR_APP_SECRET_FROM_RECLAIM_DEVTOOLS",
        /// This is the provider id that you've added to your app in Reclaim Devtools.
        /// The verification flow will use the provider information fetch by this provider id.
        providerId: providerId
    )
)
```

More ways to create a request object are available in the `ReclaimVerification.Request.*` apis.

3. Start the verification flow.

```swift
// This is the function that starts the verification flow.
// This may fail if device screen is getting shared.
let result = try await ReclaimVerification.startVerification(request)
```

The returned result is a `ReclaimVerification.Response` object. This object contains a response that has proofs, exception, and the sessionId if the verification is successful.

If the verification is cancelled or failed, the result will contain an exception.

You can use the `ReclaimVerification.Response` object to get the proof, exception, and sessionId.

```swift
let proof = result.response.proofs
let exception = result.response.exception
let sessionId = result.response.sessionId
```

If the verification is successful, the proof will contain the data that you need to store in your database.

If the verification is cancelled or failed, the exception will contain the error details.

In the above apis, `ReclaimVerification.Request.*`, `ReclaimVerification.startVerification` or `ReclaimVerification.startVerificationFromUrl` can also throw an error. The error can be one of the following:

- `ReclaimVerificationError.cancelled`: The verification was cancelled by the user.
- `ReclaimVerificationError.dismissed`: The verification was dismissed by the sdk.
- `ReclaimVerificationError.failed(let error)`: The verification failed due to an error.
- `ReclaimVerificationError.sessionExpired`: The verification session expired.

You can handle the error by using a `do-catch` block. For example:

```swift
do {
    let result = try await ReclaimVerification.startVerification(request)
} catch ReclaimVerificationError.cancelled {
    print("Verification cancelled")
} catch ReclaimVerificationError.dismissed {
    print("Verification dismissed")
}
```

For a complete example, see the [Reclaim Example - SwiftUI](https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk/blob/53a19f88c8d90df485a60dc20190f740cd9fd108/Examples/SwiftUIExample/SwiftUIExample/ContentView.swift).

## Overrides | Advanced Usage

You can use the `ReclaimOverrides` to customize the verification flow with `ReclaimVerification.setOverrides`.

```swift
func setOverrides() {
    Task { @MainActor in
        do {
            try await ReclaimVerification.setOverrides(
                appInfo: ReclaimOverrides.ReclaimAppInfo(
                    appName: "Overriden Example",
                    appImageUrl: "https://placehold.co/400x400/png"
                )
                // Add other overrides here
            )
        } catch {
            print("unexpected failure error details: \(error)")
            showAlert(message: "Could not set overrides")
        }
    }
}
```

## Upgrading

To upgrade to a new version of the Reclaim InApp SDK, follow these steps:

1. Make sure you have the latest version of the Reclaim InApp SDK. Currently the latest version is `0.15.0`. 
1. Incase of any problems: remove package, clear build, restart Xcode, and add package again.

Migration guides will be available when a new version with API changes is released. 
