Pod::Spec.new do |s|
    s.name              = 'ReclaimInAppSdk'
    s.module_name       = 'ReclaimInAppSdk'
    s.version           = '0.1.3'

    s.summary           = 'The official Reclaim InApp SDK for iOS.'

    s.description       = <<-DESC
                          ReclaimInAppSdk is a quick and secure way to integrate with
                          the Reclaim Protocol API. ReclaimInAppSdk is an embeddable framework
                          that handles Reclaim Verification's Claim Creation and Claim Submission.
                          DESC

    s.homepage          = 'https://docs.reclaimprotocol.org'
    s.license           = { :type => 'MIT', :file => 'LICENSE' }
    s.author            = 'Reclaim Protocol'
    s.source            = { :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :tag => s.version }

    s.platform          = :ios, '13.0'
    s.swift_version     = '6.0'

    s.source_files      = [ 'Sources/**/*.{h,m,mm,cpp,swift}' ]
    s.exclude_files     = [ 'Examples/**', 'Devel/**', 'Scripts/**', 'Tests/**', 'Sources/ReclaimInAppSdk/Resources/**/*.{version,plist}' ]

    s.resources = ['Sources/ReclaimInAppSdk/Resources/*.{version,xcprivacy}']

    s.pod_target_xcconfig   = {
        'SWIFT_VERSION' => '5.0',
        'VALID_ARCHS' => 'x86_64 arm64',
        'DEFINES_MODULE' => 'YES',
        # Flutter.framework does not contain a i386 slice.
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    }

    xcframework_urls = [
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/App.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/Flutter.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/FlutterPluginRegistrant.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/OrderedSet.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/cupertino_http.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/device_info_plus.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/flutter_inappwebview_ios.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/flutter_secure_storage.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/fluttertoast.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/objective_c.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/package_info_plus.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/path_provider_foundation.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/permission_handler_apple.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/reclaim_gnark_zkoperator.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/share_plus.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/shared_preferences_foundation.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/sqflite_darwin.zip',
        'https://reclaim-inapp-sdk.s3.ap-south-1.amazonaws.com/ios/0.1.2/BinaryTargets/url_launcher_ios.zip',
    ]

    # Prepare command to download and unzip XCFrameworks
    s.prepare_command = <<-CMD
        mkdir -p ReclaimXCFrameworks
        # Downloads and unzips the XCFrameworks on every pod install. Needs improvement.
        #{xcframework_urls.map { |url| "curl -L '#{url}' -o $(basename '#{url}') && unzip -q -o $(basename '#{url}') -d ./ && rm $(basename '#{url}')" }.join("\n")}
    CMD

    # Specify the paths to the unzipped XCFramework directories
    s.vendored_frameworks = ['ReclaimXCFrameworks/*.xcframework']
end
