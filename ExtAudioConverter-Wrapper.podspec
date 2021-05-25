#
# Be sure to run `pod lib lint ExtAudioConverter-Wrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ExtAudioConverter-Wrapper'
  s.version          = '1.0.2'
  s.summary          = 'Integrate lame.framework dependency with ExtAudioConverter.'

  s.description      = "ExtAudioConverter-Wrapper is a copy of ExtAudioConverter provided by lixing123"

  s.homepage         = 'https://github.com/dhatuna/ExtAudioConverter-Wrapper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jk-gna' => 'junq.jeon@gmail.com' }
  s.source           = { :git => 'https://github.com/dhatuna/ExtAudioConverter-Wrapper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'ExtAudioConverter-Wrapper/Classes/**/*'
  
    s.static_framework = true
  s.dependency 'lame'
  
  # s.resource_bundles = {
  #   'ExtAudioConverter-Wrapper' => ['ExtAudioConverter-Wrapper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
