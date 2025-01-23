# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'Unsplah_Clone' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Unsplah_Clone
pod 'SDWebImage'
pod 'Firebase/Auth'
pod 'Firebase/Firestore'
pod 'Hero'
pod 'SwiftLint'
pod 'IQKeyboardManagerSwift'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      xcconfig_path = config.base_configuration_reference.real_path
      xcconfig = File.read(xcconfig_path)
      xcconfig_mod = xcconfig.gsub(/DT_TOOLCHAIN_DIR/, "TOOLCHAIN_DIR")
      File.open(xcconfig_path, "w") { |file| file << xcconfig_mod }
    end
  end
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end
