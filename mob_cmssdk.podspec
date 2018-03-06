Pod::Spec.new do |s|
  s.name                  = 'mob_cmssdk'
  s.version               = "1.1.0"
  s.summary               = 'mob.com 官方提供的内容管理系统 SDK'
  s.license               = 'MIT'
  s.author                = { "mob" => "mobproducts@163.com" }

  s.homepage              = 'http://www.mob.com'
  s.source                = { :git => "https://github.com/MobClub/CMSSDK-for-iOS.git", :tag => s.version.to_s }
  s.platform              = :ios
  s.ios.deployment_target = "8.0"
  s.default_subspecs      = 'CMSSDK'
  s.dependency 'MOBFoundation' 
  s.dependency 'JiMu' 

  s.subspec 'CMSSDK' do |sp|
      sp.vendored_frameworks   = 'SDK/CMSSDK/CMSSDK.framework'
  end

  s.subspec 'CMSSDKUI' do |sp|
        sp.vendored_frameworks = 'SDK/CMSSDK/CMSSDKUI.framework'
        sp.resources = 'SDK/CMSSDK/CMSSDKUI.bundle'
        sp.dependency 'Masonry'
        sp.dependency 'mob_cmssdk/CMSSDK'
    end

end
