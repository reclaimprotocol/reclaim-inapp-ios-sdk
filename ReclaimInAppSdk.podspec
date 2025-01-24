Pod::Spec.new do |s|
    s.name              = 'ReclaimInAppSdk'
    s.module_name       = 'ReclaimInAppSdk'
    s.version           = '0.1.0'

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
    s.source            = { :git => 'https://gitlab.reclaimprotocol.org/integrations/offchain/reclaim-inapp-sdk-ios.git', :tag => s.version }

    s.ios.frameworks    = 'Foundation', 'UIKit', 'WebKit', 'SafariServices'
    s.ios.vendored_frameworks = 'ReclaimInAppSdk.xcframework'
end
