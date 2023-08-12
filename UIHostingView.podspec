Pod::Spec.new do |s|
  s.name             = 'UIHostingView'
  s.version          = '0.1.0'
  s.summary          = 'A lightweight SwiftUI View wrapper for integration within UIKit.'

  s.description      = <<-DESC
UIHostingView is a lightweight SwiftUI View wrapper that enables the seamless integration of SwiftUI content within UIKit components.
                       DESC

  s.homepage         = 'https://github.com/GSukh/UIHostingView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gregory Suhorukov' => 'grigoriy.sukhorukov@gmail.com' }
  s.source           = { :git => 'https://github.com/GSukh/UIHostingView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/UIHostingView/**/*'
end
