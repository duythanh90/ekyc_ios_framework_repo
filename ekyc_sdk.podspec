Pod::Spec.new do |s|
  s.name                  = 'ekyc_sdk'
  s.version               = '1.1.133'
  s.summary               = 'A UI toolkit for beautiful and fast apps.'
  s.description           = <<-DESC
Flutter is Google's UI toolkit for building beautiful, fast apps for mobile, web, desktop, and embedded devices from a single codebase.
This pod vends the iOS Flutter engine framework. It is compatible with application frameworks created with this version of the engine and tools.
The pod version matches Flutter version major.minor.(patch * 100) + hotfix.
DESC
  s.homepage              = 'https://flutter.dev'
  s.license               = { :type => 'BSD', :text => <<-LICENSE
Copyright 2014 The Flutter Authors. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

LICENSE
  }
  s.author                = { 'UIUX Dev Team' => 'giangnt82@gmail.com' }
  s.source                = { :http => 'https://github.com/duythanh90/ekyc_ios_framework_repo/raw/integrate-20231102/ekyc_sdk.zip' }
  s.documentation_url     = 'https://flutter.dev/docs'
  s.platform              = :ios, '9.0'

  s.subspec 'App' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'App.xcframework'
  end

#   s.subspec 'assets_audio_player' do |as|
#     as.platform              = :ios, '9.0'
#     as.vendored_frameworks   = 'assets_audio_player.xcframework'
#   end

  s.subspec 'camera_avfoundation' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'camera_avfoundation.xcframework'
  end

  s.subspec 'CocoaLumberjack' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'CocoaLumberjack.xcframework'
  end

  s.subspec 'ekyc_flutter_sdk' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'ekyc_flutter_sdk.xcframework'
  end

  s.subspec 'FlutterPluginRegistrant' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'FlutterPluginRegistrant.xcframework'
  end

  s.subspec 'juicy_score_flutter' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'juicy_score_flutter.xcframework'
  end

  s.subspec 'JuicyScoreFramework' do |as|
    as.platform              = :ios, '9.0'
    as.resources = ["JuicyScoreSDK/res/mb.html"]
    as.preserve_paths = 'JuicyScoreFramework.xcframework/**/*'
    as.vendored_frameworks   = 'JuicyScoreFramework.xcframework'
  end

#   s.subspec 'Lottie' do |as|
#     as.platform              = :ios, '9.0'
#     as.vendored_frameworks   = 'Lottie.xcframework'
#   end

  s.subspec 'path_provider_foundation' do |as|
    as.platform              = :ios, '9.0'
    as.ios.xcconfig = {
        'LIBRARY_SEARCH_PATHS' => '$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)/ $(SDKROOT)/usr/lib/swift',
        'LD_RUNPATH_SEARCH_PATHS' => '/usr/lib/swift',
      }
    as.vendored_frameworks   = 'path_provider_foundation.xcframework'
  end

  s.subspec 'PromiseKit' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'PromiseKit.xcframework'
  end

  s.subspec 'TensorFlowLite' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'TensorFlowLite.xcframework'
  end

  s.subspec 'tflite_flutter' do |as|
    as.platform              = :ios, '9.0'
    as.library = 'c++'
    as.vendored_frameworks   = 'tflite_flutter.xcframework'
  end

  s.subspec 'url_launcher_ios' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'url_launcher_ios.xcframework'
  end

  s.subspec 'webview_flutter_wkwebview' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'webview_flutter_wkwebview.xcframework'
  end

  s.subspec 'flutter_linkid_digitalfootprint' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'flutter_linkid_digitalfootprint.xcframework'
  end

  s.subspec 'LinkIdDigitalFootprint' do |as|
    as.platform              = :ios, '9.0'
    as.dependency 'SpeedcheckerSDK'
    as.preserve_paths = 'LinkIdDigitalFootprint.xcframework/**/*'
    as.vendored_frameworks   = 'LinkIdDigitalFootprint.xcframework'
  end

  s.subspec 'trust_vision_plugin' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks   = 'trust_vision_plugin.xcframework'
  end

  s.subspec 'Frameworks' do |as|
    as.platform              = :ios, '9.0'
    as.vendored_frameworks = "Frameworks/*.xcframework"
    as.resources = "Frameworks/*.bundle"
    as.dependency "TensorFlowLiteSwift", "2.6.0"
    #as.dependency "PromiseKit", "6.8.0"
    #as.dependency "lottie-ios", "3.2.1"
    #as.dependency "CocoaLumberjack/Swift"
    #as.dependency "OpenSSL-Universal"
  end
end
