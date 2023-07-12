#
# Be sure to run `pod lib lint BlufiLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BlufiLibrary'
  s.version          = '1.5.0'
  s.summary          = 'A short description of BlufiLibrary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  EspBlufiForiOS 支持 Cocoapods，提升稳定性。
                       DESC

  s.homepage         = 'https://github.com/mzying2013/blufi-library'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bill' => 'liumin2011@gmail.com' }
  s.source           = { :git => 'https://github.com/mzying2013/blufi-library', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
#  s.static_framework = true

  s.source_files = 'BlufiLibrary/Classes/**/*'
  s.public_header_files = 'BlufiLibrary/Classes/**/*.h'
  # s.resource_bundles = {
  #   'BlufiLibrary' => ['BlufiLibrary/Assets/*.png']
  # }

# 解决 building for iOS Simulator, but linking in object file built for iOS 的问题，保证可以在模拟器运行。
#  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
#  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  #s.module_map = "BlufiLibrary/BlufiLibrary.modulemap"

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'CoreBluetooth'
  # s.dependency 'AFNetworking', '~> 2.3'
   s.dependency 'OpenSSL-Universal'
end
