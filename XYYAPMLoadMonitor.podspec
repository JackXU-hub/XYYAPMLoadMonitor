#
# Be sure to run `pod lib lint XYYAPMLoadMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XYYAPMLoadMonitor'
  s.version          = '0.1.3'
  s.summary          = '页面请求时间监控'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/XUDAQUAN/XYYAPMLoadMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xudaquan' => 'xudaquan@ybm100.com' }
  s.source           = { :git => 'https://github.com/XUDAQUAN/XYYAPMLoadMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.vendored_frameworks = ['XYYAPMLoadMonitor/Classes/XYYAPMLoadFrameWork/*.framework']
  #s.source_files = 'XYYAPMLoadMonitor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XYYAPMLoadMonitor' => ['XYYAPMLoadMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
