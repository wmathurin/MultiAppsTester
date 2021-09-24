platform :ios, '13.0'
use_frameworks!
source 'https://github.com/CocoaPods/Specs.git'

workspace 'MultiAppsTester.xcworkspace'

def shared_pods
  pod 'SalesforceSDKCommon', :path => 'mobile_sdk/SalesforceMobileSDK-iOS'
  pod 'SalesforceAnalytics', :path => 'mobile_sdk/SalesforceMobileSDK-iOS'
  pod 'SalesforceSDKCore', :path => 'mobile_sdk/SalesforceMobileSDK-iOS'
  pod 'SmartStore', :path => 'mobile_sdk/SalesforceMobileSDK-iOS'
  pod 'MobileSync', :path => 'mobile_sdk/SalesforceMobileSDK-iOS'
end

target 'MultiAppsTester1' do
  project 'MultiAppsTester1.xcodeproj'
  shared_pods
end

target 'MultiAppsTester2' do
  project 'MultiAppsTester2.xcodeproj'
  shared_pods
end
