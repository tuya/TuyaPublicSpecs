
Pod::Spec.new do |s|
  s.name             = 'TuyaSmartDemo'
  s.version          = '1.0.0'
  s.summary          = 'A short description of TuyaSmartDemo.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tuya'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '527548875@qq.com' => 'huangkai@tuya.com' }
  s.source           = { :http => "https://raw.githubusercontent.com/huangdaxiaEX/TYDemoZip/master/TuyaSmartDemo.zip", :type => "zip" }
  
  s.ios.deployment_target = '8.0'
  
  s.default_subspec = 'UserInfo'
  
  s.subspec 'Base' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/Base/**/*.{h,m}', 'TuyaSmartDemo/Classes/Manager/**/*.{h,m}'

    ss.resource_bundles = {
      'TuyaSmartDemoBaseBundle' => 'TuyaSmartDemo/Classes/Base/Assets/**/*'
    }
    
    ss.prefix_header_contents = '#ifdef __OBJC__',
    '#import "TYDemoTheme.h"',
    '#import "TPDemoViewConstants.h"',
    '#import "UIView+TPDemoAdditions.h"',
    '#import "TPDemoUtils.h"',
    '#endif'
    
    ss.dependency 'MBProgressHUD', '0.9.2'
    ss.dependency 'Reachability'
    ss.dependency 'YYModel'
    
    ss.dependency 'TuyaSmartBaseKit'
  end
  
  s.subspec 'Login' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/Login/**/*.{h,m}'
    ss.dependency 'TuyaSmartDemo/Base'
    
    ss.dependency 'TuyaSmartBaseKit'
  end
  
  s.subspec 'SmartScene' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/SmartScene/**/*.{h,m}'
    ss.resource_bundles = {
      'TuyaSmartDemoSceneBundle' => 'TuyaSmartDemo/Classes/SmartScene/Assets/**/*'
    }
    
    ss.prefix_header_contents = '#ifdef __OBJC__',
    '#import "TYDemoSmartSceneUtil.h"',
    '#endif'
    
    ss.dependency 'TuyaSmartDemo/Base'
    
    ss.dependency 'SDWebImage'
    ss.dependency 'TuyaSmartSceneKit'
  end
  
  s.subspec 'DeviceList' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/DeviceList/**/*.{h,m}'
    
    ss.resource_bundles = {
      'TuyaSmartDemoDeviceListBundle' => 'TuyaSmartDemo/Classes/DeviceList/Assets/**/*'
    }
    
    ss.prefix_header_contents = '#ifdef __OBJC__',
    '#import "TYDemoDeviceListUtil.h"',
    '#endif'
    
    ss.dependency 'TuyaSmartDemo/Base'
    
    ss.dependency 'SDWebImage'
    ss.dependency 'TuyaSmartDeviceKit'
  end
  
  s.subspec 'AddDevice' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/AddDevice/**/*.{h,m}'
    ss.dependency 'TuyaSmartDemo/Base'
    
    ss.dependency 'SDWebImage'
    ss.dependency 'Masonry'
    ss.dependency 'TuyaSmartActivatorKit'
    ss.dependency 'TuyaSmartBLEMeshKit'
  end
  
  s.subspec 'UserInfo' do |ss|
    ss.source_files = 'TuyaSmartDemo/Classes/UserInfo/**/*.{h,m}'
    ss.dependency 'TuyaSmartDemo/Base'
  end
  
  # s.resource_bundles = {
  #   'TuyaSmartDemo' => ['TuyaSmartDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
