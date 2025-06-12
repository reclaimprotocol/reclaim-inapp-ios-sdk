# GENERATED FILE, DO NOT EDIT BY HAND
Pod::Spec.new do |s|
    s.name              = 'ReclaimInAppSdk'
    s.module_name       = 'ReclaimInAppSdk'
    s.version           = '0.8.3'

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

    s.platform          = :ios, '13.0'
    s.swift_version     = '5.8'

    # Ensure developers won't hit CocoaPods/CocoaPods#11402 with the resource
    # bundle for the privacy manifest.
    s.cocoapods_version = '>= 1.12.0'

    s.source_files      = [ 'Sources/**/*.{h,m,mm,cpp,swift}' ]

    s.resources = ['Sources/ReclaimInAppSdk/Resources/*.{version}']
    s.resource_bundle = {
        "#{s.module_name}_Privacy" => "Sources/#{s.module_name}/Resources/PrivacyInfo.xcprivacy"
    }

    s.pod_target_xcconfig   = {
        'SWIFT_VERSION' => '5.0',
        'VALID_ARCHS' => 'x86_64 arm64',
        'DEFINES_MODULE' => 'YES',
        # Flutter.framework does not contain a i386 slice.
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    }

    xcframework_urls = [
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/App.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/cupertino_http.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/device_info_plus.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/flutter_inappwebview_ios.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/flutter_secure_storage.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/Flutter.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/FlutterPluginRegistrant.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/fluttertoast.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/objective_c.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/OrderedSet.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/package_info_plus.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/path_provider_foundation.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/permission_handler_apple.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/reclaim_gnark_zkoperator.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/shared_preferences_foundation.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/sqflite_darwin.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.8.3/BinaryTargets/url_launcher_ios.zip',
    ]

    # Prepare command to download and unzip XCFrameworks
    s.prepare_command = <<-CMD
        rm -rf ReclaimXCFrameworks # clear older xcframeworks
        rm -rf Build/PodCache
        mkdir -p Build/PodCache
        # Downloads and unzips the XCFrameworks on every pod install. Needs improvement.
        #{xcframework_urls.map { |url| "curl -L '#{url}' -o $(basename '#{url}') && unzip -q -o $(basename '#{url}') -d ./Build/PodCache && rm $(basename '#{url}')" }.join("\n")}
    CMD

    # Specify the paths to the unzipped XCFramework directories
    s.vendored_frameworks = ['Build/PodCache/*.xcframework']
end

