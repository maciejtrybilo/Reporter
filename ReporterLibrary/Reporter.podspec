Pod::Spec.new do |s|
  s.name = 'Reporter'
  s.version = '0.1.0'
  s.license = 'Copyleft'
  s.summary = 'Reporting library'
  s.homepage = 'https://github.com/maciejtrybilo/Reporter'
  s.authors = { 'Maciej Trybilo' => 'maciektr@gmail.com' }
  s.source = { :git => 'https://github.com/maciejtrybilo/Reporter.git', :tag => s.version }  

  s.ios.deployment_target = '8.1'
  s.osx.deployment_target = '10.11'

  s.source_files = 'Reporter/*'

  s.requires_arc = true
end
