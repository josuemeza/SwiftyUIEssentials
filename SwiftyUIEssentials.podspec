#
# Be sure to run `pod lib lint SwiftyUIEssentials.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                    = 'SwiftyUIEssentials'
  s.version                 = '1.0.0'
  s.swift_version           = '3.2'
  s.summary                 = 'A essential UI extensions'
  s.description             = 'A UI essential classes and extensions'
  s.homepage                = 'https://github.com/josuemeza/SwiftyUIEssentials'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'Josue Meza Peña' => 'contacto@josuemeza.com' }
  s.source                  = { :git => 'https://github.com/josuemeza/SwiftyUIEssentials.git', :tag => s.version.to_s }
  s.platform                = :ios, '10.0'
  s.ios.deployment_target   = '10.0'
  s.frameworks              = 'UIKit'
  s.source_files            = 'SwiftyUIEssentials/Classes/**/*'
  s.documentation_url       = 'https://josuemeza.com/pods/SwiftyUIEssentials/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
end
