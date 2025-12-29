#
# Be sure to run `pod lib lint QXWebView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QXWebView'
  s.version          = '0.1.0'
  s.summary          = 'A short description of QXWebView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =  'Add long description of the pod here'

  s.homepage         = 'https://github.com/gu0315/QXWebview'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gqx' => '39515706+gu0315@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/gqx/QXWebView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'QXWebView/Classes/**/*.{h,m,mm,swift,js}'
  
  # 可选：如果需要排除某些文件/文件夹，可补充
  # s.exclude_files = 'QXWebView/Classes/JDBridge/UnusedFile.swift'
  
   s.resource_bundles = {
     'QXWebView' => ['QXWebView/Resources/*']
   }

  s.public_header_files = 'QXWebView/Classes/QXWebView.h', 'QXWebView/Classes/JDBridge/*.h', 'QXWebView/Classes/JDWebView/*.h'
  s.frameworks = 'UIKit', 'CoreLocation', 'Foundation'
  s.libraries = 'z', 'c++'
  
  s.static_framework = true
  # 添加高德定位 SDK 依赖（复用主工程的 AMapLocation-NO-IDFA）
  #s.dependency 'AMapLocation-NO-IDFA'

  s.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC -all_load',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'ENABLE_BITCODE' => 'NO',
    }
end
