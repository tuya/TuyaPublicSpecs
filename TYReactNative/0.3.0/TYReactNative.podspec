Pod::Spec.new do |s|
  s.name = "TYReactNative"
  s.version = "0.3.0"
  s.summary = "A short description of TYReactNative."
  s.license = {"type"=>"MIT"}
  s.authors = { 'TuyaInc' => 'https://www.tuya.com' }
  s.homepage = 'https://github.com/TuyaInc'
  s.description = "TODO: Add long description of the pod here."
  s.source = { :http => "https://airtake-public-data-1254153901.cos.ap-shanghai.myqcloud.com/smart/app/package/sdk/ios/#{s.name}-#{s.version}.zip", :type => "zip" }
  s.ios.deployment_target    = '8.0'
  s.dependency 'React'
  s.dependency 'react-native-maps'
  s.dependency 'rn-fetch-blob'
  s.dependency 'RNSVG'
  s.dependency 'react-native-image-picker'
  s.dependency 'react-native-video'
  s.dependency 'RNViewShot'

  s.pod_target_xcconfig = {
    'TUYA_PRIVACY_USAGE_DESCRIPTION' => 'NSLocationWhenInUseUsageDescription'
  }
end
