# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!

def shared_pods
  # Networking library
  pod 'Alamofire'
  # Json parsing library
  pod 'ObjectMapper', '~> 2.2'
  # Image downloading and caching library
  pod 'Kingfisher', '~> 3.0'
  # Crash reporting library
  pod 'Fabric'
  pod 'Crashlytics'
  # Logging library
  pod 'SwiftyBeaver’
  # Dependency Injection container
  pod 'Swinject', '~> 2.0.0'

end

target 'Learnwise' do
  shared_pods
end

target 'LearnwiseTests' do
  inherit! :search_paths
  # Pods for testing
  shared_pods
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
