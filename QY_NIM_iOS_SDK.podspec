Pod::Spec.new do |s|

    s.name     = 'QY_NIM_iOS_SDK'
    s.version  = '10.3.1'
    s.license  = { :"type" => "Copyright",
                   :"text" => " Copyright 2021 Netease \n"}  
    s.summary  = '网易七鱼客服访客端 iOS SDK'
    s.homepage = 'https://qiyukf.com'
    s.author   = { 'qiyukf' => 'yunshangfu@126.com' }
    s.source   = { :git => 'https://github.com/qiyukf/QY_NIM_iOS_SDK.git', :tag => "#{s.version}" }
    s.platform = :ios, '9.0'
    
    s.framework = 'AVFoundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'WebKit', 'CoreTelephony', 'CoreText', 'CoreMedia', 'ImageIO', 'CoreMotion', 'AudioToolbox', 'Photos', 'Accelerate'
    s.libraries = 'c++', 'z','sqlite3.0','xml2','resolv'
    s.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
    s.default_subspec = 'Default'
    s.subspec 'Default' do |ds|
    		ds.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
        ds.vendored_frameworks = '**/QYSDK_ReName.xcframework'
        ds.dependency 'QY_RENAME_NIMSDK', '8.9.123.2'
    end
    s.subspec 'Video' do |vs|
    		vs.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle' , '**/Resources/QYVideoResource.bundle']
        vs.vendored_frameworks = ['**/QYSDK_ReName.xcframework','**/QYVideoService_ReName.xcframework']
        vs.dependency 'QY_RENAME_NIMSDK', '8.9.123.2'
        vs.dependency 'QY_iOS_SDK_Package', '7.11.5'
    end
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 x86_64 arm64' }
    s.requires_arc = true
    end



