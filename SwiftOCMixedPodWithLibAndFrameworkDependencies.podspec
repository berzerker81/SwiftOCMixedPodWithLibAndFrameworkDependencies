#
# Be sure to run `pod lib lint SwiftOCMixedPodWithLibAndFrameworkDependencies.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftOCMixedPodWithLibAndFrameworkDependencies'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SwiftOCMixedPodWithLibAndFrameworkDependencies.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jaybowong/SwiftOCMixedPodWithLibAndFrameworkDependencies'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jaybowong' => 'wangjiebo911@gmail.com' }
  s.source           = { :git => 'https://github.com/jaybowong/SwiftOCMixedPodWithLibAndFrameworkDependencies.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/jaybowong'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftOCMixedPodWithLibAndFrameworkDependencies/Classes/**/*'
  s.static_framework = true
  
  # s.resource_bundles = {
  #   'SwiftOCMixedPodWithLibAndFrameworkDependencies' => ['SwiftOCMixedPodWithLibAndFrameworkDependencies/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  # frameworks
  s.dependency 'Fabric'
  s.dependency 'Crashlytics'

  # library
  s.dependency 'MiPushSDK'

  s.vendored_frameworks = 'SwiftOCMixedPodWithLibAndFrameworkDependencies/Frameworks/KakaoNavi.framework'
  s.public_header_files = 'Pod/Classes/**/*.h'
   s.xcconfig = {"OTHER_LDFLAGS" => '$(inherited) -ObjC'}
end
