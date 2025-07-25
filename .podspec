require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorDynamicIsland'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['homepage']
  s.author = package['author'] || { 'bsmallyt' => 'benjaminsmallyt@gmail.com' }

  s.source = { :path => '.' }

  s.source_files = 'ios/Sources/**/*.{swift,h,m,mm}'
  s.ios.deployment_target = '13.0'

  s.dependency 'Capacitor'
end
