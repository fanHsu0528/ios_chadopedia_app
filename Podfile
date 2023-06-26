# Uncomment the next line to define a global platform for your project
source 'https://cdn.cocoapods.org/'
platform :ios, '11.0'

# Pods for ios_chadopedia_app
def rx_swift
    pod 'RxSwift', '~> 6.5.0'
end

def rx_cocoa
    pod 'RxCocoa', '~> 6.5.0'
end


target 'ios_chadopedia_app' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  rx_cocoa
  rx_swift

  
  # Add the Firebase pod for Google Analytics
  pod 'FirebaseAnalytics'

  # For Analytics without IDFA collection capability, use this pod instead
  # pod ‘Firebase/AnalyticsWithoutAdIdSupport’

  # Add the pods for any other Firebase products you want to use in your app
  # For example, to use Firebase Authentication and Cloud Firestore
  pod 'FirebaseAuth'
  pod 'FirebaseFirestore'

  
#  target 'ios_chadopedia_appTests' do
#    inherit! :search_paths
#    # Pods for testing
#  end
#
#  target 'ios_chadopedia_appUITests' do
#    # Pods for testing
#  end

end
