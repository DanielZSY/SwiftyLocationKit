#
# Be sure to run `pod lib lint SwiftyLocationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 1. new code update github
# 2. local not code : pod repo add SwiftyLocationKit  https://github.com/DanielZSY/SwiftyLocationKit.git
#    local uodate code: cd ~/.cocoapods/repos/SwiftyLocationKit. Then execute: pod repo update SwiftyLocationKit
# 3. pod repo push SwiftyLocationKit SwiftyLocationKit.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'
# 4. pod trunk push SwiftyLocationKit.podspec --allow-warnings
# 5. pod install or pod update on you project execute

Pod::Spec.new do |s|
  s.name             = 'SwiftyLocationKit'
  s.version          = '0.0.1'
  s.summary          = 'SwiftyLocationKit'
  s.module_name      = 'SwiftyLocationKit'
  
  s.homepage         = 'https://github.com/DanielZSY/SwiftyLocationKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DanielZSY' => 'danielzsy@163.com' }
  s.source           = { :git => 'https://github.com/DanielZSY/SwiftyLocationKit.git', :tag => s.version.to_s }
  
  s.platform              = :ios, '10.0'
  s.swift_versions        = "5"
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '5.0' }
  
  s.frameworks    = 'UIKit'
  s.libraries     = 'z', 'c++'
  s.source_files  = 'SwiftyLocationKit/**/*.{swift,h,m}'
  
  s.dependency 'BFKit-Swift'
end
