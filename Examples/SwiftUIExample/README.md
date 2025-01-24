# Reclaim Example - SwiftUI

This example demonstrates how to use the Reclaim SDK in a SwiftUI application.

For a complete example, see the [Reclaim Example - SwiftUI](Examples/SwiftUIExample/SwiftUIExample/ContentView.swift).

## Prerequisites

- You have an app in Reclaim Devtools.
- You have added a provider to your app in Reclaim Devtools.
- You have the appId and secret from Reclaim Devtools.
- You have to download the ReclaimXCFrameworks by running the following command in this directory:

```bash
bash <(curl -s https://raw.githubusercontent.com/reclaimprotocol/reclaim-inapp-ios-sdk/refs/heads/main/Scripts/download_frameworks.sh)
```

## Setup

1. AppId and secret are provided to the app from the Info.plist file. This step is optional, and instead of this you can directly set the appId and secret in the `ReclaimVerification.Request.*` apis.
2. If you decide to set the appId and secret in the Info.plist file (even if you don't have this file in your project), you can do it by:
    1. Opening your project in Xcode.
    2. Clicking on the project target.
    3. Clicking on the **Info** tab.
    4. Clicking on the **+** button to add a new key in the **Custom iOS Target Properties** section.
    5. Adding the key `ReclaimInAppSDKParam` and set value as a dictionary.
    6. Adding the value for the key `ReclaimAppId` and `ReclaimAppSecret` from Reclaim Devtools.
3. Setting the appId and secret. 
    1. This example sets this data using xcconfig during build process which may or may not needed for your project.
    2. This project uses an `xcconfig` file to avoid leaking the app secret in the source code and this file is ignored in the git version control with `.gitignore` file. You may follow instructions from [Adding a Build Configuration File to Your Project](https://developer.apple.com/documentation/xcode/adding-a-build-configuration-file-to-your-project) to set this up in your project.
    3. Copy the `BaseConfig.xcconfig.example` file to `BaseConfig.xcconfig` and remove the quotes around the values.
    4. Set the values for the keys `RECLAIM_APP_ID`, `RECLAIM_APP_SECRET`, and `RECLAIM_PROVIDER_ID` to the values from Reclaim Devtools.
4. Build the project and run on a device or simulator.
