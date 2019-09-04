#
# Be sure to run `pod lib lint ATNavigationBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ATNavigationBar'
  s.version          = '0.1.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://github.com/zDILIGENCEz/ATNavigationBar'
  s.summary          = 'An animated transparent NavigationBar for iOS written in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                   This is an iOS library add animated transparent NavigationBar to your project.
                   * Allows to specify configurable NavigationBar.
                   // TODO: rewrite description
                       DESC
  
  s.author           = { 'Nikita Kusyumov' => 'n.kusyumov@mail.ru' }
  s.source           = { :git => 'https://github.com/zDILIGENCEz/ATNavigationBar.git', :tag => s.version.to_s }
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.source_files = 'ATNavigationBar/Classes/**/*'
  s.ios.deployment_target = '8.0'
  # s.dependency 'AFNetworking', '~> 2.3' 
  s.swift_versions = ["4.2", "5.0"]
  s.frameworks = 'UIKit', 'SnapKit'

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  # s.resource_bundles = {
  #   'ATNavigationBar' => ['ATNavigationBar/Assets/*.png']
  # }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
end
