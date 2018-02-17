Pod::Spec.new do |s|
  s.name             = 'SimpleString'
  s.version          = '0.1.1'
  s.swift_version	 = '4.0'
  s.summary          = 'Simply styling strings' 
  s.homepage         = 'https://github.com/pangers/SimpleString'
  s.license          = { :type => 'MIT', :file => 'License' }
  s.author           = { 'James Pang' => 'j.pang91@gmail.com' }
  s.source           = { :git => 'https://github.com/pangers/SimpleString.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '11.2'
  s.source_files = 'SimpleString/SimpleString.swift'
 
end