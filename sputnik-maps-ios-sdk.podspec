#
# Be sure to run `pod lib lint sputnik-maps-ios-sdk.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "sputnik-maps-ios-sdk"
  s.version          = "0.1.1"
  s.summary          = "Maps SDK for iOS with tiles from Sputnik.ru"
  s.description      = "Maps SDK for iOS with tiles from Sputnik.ru which uses forked mapbox-ios-sdk and provides custom tile source and map view."
  s.homepage         = "http://gitlab.srv.pv.km/ios-dev/sputnik-maps-ios-sdk"

  s.license          = 'Commercial'
  s.author           = { "Denis Zamataev" => "zamataev@corp.sputnik.ru" }
  s.source           = { :git => "http://gitlab.srv.pv.km/ios-dev/sputnik-maps-ios-sdk.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'sputnik-maps-ios-sdk' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  # next line is a private fork which needs private spec repo source to lint
  # use command line option described below to lint this spec succesfully
  # pod spec lint --allow-warnings --sources='http://gitlab.srv.pv.km/ios-dev/cocoapods-spec.git,https://github.com/CocoaPods/Specs'
  s.dependency 'Mapbox-iOS-SDK', '= 1.6.0-sputnik'
end
