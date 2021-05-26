#
# Be sure to run `pod lib lint ExtAudioConverter-Wrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ExtAudioConverter-Wrapper'
  s.version          = '1.0.3'
  s.summary          = 'Integrate lame.framework dependency with ExtAudioConverter.'

  s.description      = "ExtAudioConverter-Wrapper is a copy of ExtAudioConverter provided by lixing123"

  s.homepage         = 'https://github.com/dhatuna/ExtAudioConverter-Wrapper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jk.jeon' => 'junq.jeon@gmail.com' }
  s.source           = { :git => 'https://github.com/dhatuna/ExtAudioConverter-Wrapper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.1'

  s.source_files = 'ExtAudioConverter-Wrapper/Classes/**/*'
  
    s.static_framework = true
  s.dependency 'lame'
  
  s.pod_target_xcconfig = {
   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
 }
 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
