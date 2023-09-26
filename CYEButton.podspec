

Pod::Spec.new do |spec|
  spec.name         = "CYEButton"
  spec.version      = "1.0.0"
  spec.license      = "MIT"
  spec.summary      = "基于UIButton封装的一个轻量级Button，解决重复点击、连续点击问题."
  spec.homepage     = "https://github.com/caolaidong/CYEButton"
  spec.author       = "caolaidong"
  spec.source       = { :git => "https://github.com/caolaidong/CYEButton.git", :tag => '1.0.0'}
  spec.ios.deployment_target = "13.0"
  spec.source_files  = "CYEButton.swift"
  spec.framework  = "SystemConfiguration"
  spec.swift_versions = ['5.0']
end


# pod spec create CYEButton
# git add .
# git commit -m 'message'
# git push
# git tag '1.0.10'
# git push --tag
# pod lib lint CYEButton.podspec --allow-warnings
# pod spec lint CYEButton.podspec --allow-warnings
# pod trunk push CYEButton.podspec --allow-warnings
# pod trunk me