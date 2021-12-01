Pod::Spec.new do |s|
  s.name             = 'TuyaIoTAppSDK'
  s.version          = '1.0.0'
  s.summary = "#{s.name} for iOS."
  s.license = "none"
  s.homepage = "https://developer.tuya.com/"
  s.authors = {"Tuya SDK"=>"developer@tuya.com"}
  s.source = { :http => "https://images.tuyacn.com/smart/app/package/sdk/ios/#{s.name}-#{s.version}.zip", :type => "zip" }

  s.swift_version = '5.0'

  s.ios.deployment_target = '10.0'

  s.static_framework = true

  s.ios.vendored_frameworks = "#{s.name}.xcframework"

  s.dependency 'TuyaSmartUtil', '3.26.5-iotappsdk-8'
  s.dependency 'TuyaSmartSocketChannelKit', '3.26.0-iotappsdk-1'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end