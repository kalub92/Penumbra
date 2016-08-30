#
# Be sure to run `pod lib lint Penumbra.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Penumbra'
  s.version          = '0.1.0'
  s.summary          = 'UIView/UIButton Subclass to create perfect, magical diffused drop shadows.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kalub92/Penumbra'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Caleb Stultz' => 'kalub92@gmail.com' }
  s.source           = { :git => 'https://github.com/kalub92/Penumbra.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/gurucaleb'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Penumbra/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Penumbra' => ['Penumbra/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
