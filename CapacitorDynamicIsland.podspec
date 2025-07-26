require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorDynamicIsland'
  s.version = package['version']
  s.summary = package['description'] || 'Ionic Dynamic Island integration'
  s.license = package['license'] || 'MIT'
  s.homepage = package['homepage'] || 'https://github.com/bsmallyt/capacitor-dynamic-island'
  s.author = package['author'] || { 'bsmallyt' => 'youremail@example.com' }

  s.source = { :git => 'https://github.com/bsmallyt/capacitor-dynamic-island.git', :tag => s.version.to_s }

  s.source_files = 'ios/Sources/**/*.{swift,h,m,mm}'
  s.ios.deployment_target = '13.0'
  s.dependency 'Capacitor'
end
