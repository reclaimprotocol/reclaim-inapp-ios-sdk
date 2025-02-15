Pod::Spec.new do |s|
    s.name              = 'ReclaimInAppSdk'
    s.module_name       = 'ReclaimInAppSdk'
    s.version           = '0.1.2'

    s.summary           = 'The official Reclaim InApp SDK for iOS.'

    s.description       = <<-DESC
                          ReclaimInAppSdk is a quick and secure way to integrate with
                          the Reclaim Protocol API. ReclaimInAppSdk is an embeddable framework
                          that handles Reclaim Verification's Claim Creation and Claim Submission.
                          DESC
    s.screenshot        = 'https://docs.reclaimprotocol.org/ios/ios.png'

    s.homepage          = 'https://docs.reclaimprotocol.org'
    s.license           = { :type => 'MIT', :file => 'LICENSE' }
    s.author            = 'Reclaim Protocol'

    s.platform          = :ios, '13.0'
    s.source            = { :git => 'https://github.com/reclaimprotocol/reclaim-inapp-ios-sdk.git', :tag => s.version }

    s.ios.frameworks    = 'Foundation', 'UIKit', 'WebKit', 'SafariServices'
    s.ios.vendored_frameworks = ['ReclaimInAppSdk.xcframework', 'ReclaimXCFrameworks/*.xcframework']

    s.source            = { :path => '.' }
    s.source_files      = [ 'Sources/**/*.{h,m,mm,cpp,swift}', 'ReclaimXCFrameworks/*.xcframework/Headers/**/*.h' ]
    s.exclude_files     = [ 'Examples/**' ]

    # Resources:  Use resource_bundle for better organization
    # s.resource_bundle = { 'ReclaimInAppSdk' => 'Sources/ReclaimInAppSdk/Resources/**/*' } # Path relative to repo root
    s.resources = ['Sources/ReclaimInAppSdk/Resources/**/*.{version,plist}']

    s.pod_target_xcconfig   = {
        'SWIFT_VERSION' => '5.0',
        'VALID_ARCHS' => 'x86_64 arm64',
        'DEFINES_MODULE' => 'YES',
        # Flutter.framework does not contain a i386 slice.
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
    }
    s.swift_version = '5.0'
end
