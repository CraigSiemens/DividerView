#
# Be sure to run `pod lib lint DividerView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DividerView'
  s.version          = '1.0.4'
  s.summary          = 'Create a one pixel line on any device'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       Simplifies the creation of a one pixel line on any device.
                       * Works with or without autolayout.
                       * Can be created programmatically or in storyboards/xibs
                       DESC

  s.homepage         = 'https://github.com/CraigSiemens/DividerView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Craig Siemens' => 'siemens.craig@gmail.com' }
  s.source           = { :git => 'https://github.com/CraigSiemens/DividerView.git', :tag => "v#{s.version}" }

  s.ios.deployment_target = '8.0'

  s.source_files = 'DividerView/Classes/**/*'
end
