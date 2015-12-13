Pod::Spec.new do |s|

  s.name             = "Touchtest"
  s.version          = "0.2.0"
  s.summary          = "Functional Test Automation library for iOS applications."
  s.license        = { :type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.social_media_url = 'https://twitter.com/cloudtest'
  s.source         = { :git => "https://github.com/SOASTA/mPulse-iOS.git", :tag => s.version }
  s.homepage       = "https://github.com/SOASTA/mPulse-iOS"
  s.author         = { "SOASTA" => "support@soasta.com" }

  s.platform       = :ios
  s.ios.deployment_target = "6.0"

  s.source_files   = 'include/*.h'
  s.public_header_files = 'include/*.h'
  s.preserve_paths = 'libTouchTestDriver.a'
  s.ios.vendored_library = 'libTouchTestDriver.a'
  s.libraries      = 'z', 'xml2', 'TouchTestDriver'
  s.frameworks     = 'CFNetwork', 'CoreGraphics', 'OpenGLES', 'CoreLocation', 'MapKit', 'QuartzCore', 'IOKit', 'GraphicsServices'
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-F$(SDKROOT)$(SYSTEM_LIBRARY_DIR)/PrivateFrameworks/' }
  s.requires_arc   = true
end
