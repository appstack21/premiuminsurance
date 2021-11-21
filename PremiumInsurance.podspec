Pod::Spec.new do |s|
    s.name              = 'PremiumInsurance' # Name for your pod
    s.version           = '1.0.0'
    s.summary           = 'A simple framework to demonstrate pod distribution'
    s.homepage          = 'https://github.com/appstack21/premiuminsurancepod'

    s.author            = { 'AppStack21' => 'appstack21@gmail.com' }
    s.license = { :type => "MIT", :text => "MIT License" }

    s.platform          = :ios
    
    s.source            = { :git => 'https://github.com/appstack21/premiuminsurance.git' }
    s.ios.deployment_target = '15.0'
    s.ios.vendored_frameworks = 'PremiumInsurance.xcframework'
end
