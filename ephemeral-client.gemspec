# encoding: UTF-8
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'ephemeral/version'

Gem::Specification.new do |s|
  s.name          = 'ephemeral-client'
  s.version       = Ephemeral::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Maciej Skierkowski']
  s.email         = ['maciej@factor.io']
  s.homepage      = 'https://factor.io'
  s.summary       = 'Ephemeral.io Client Library and CLI'
  s.description   = 'Manage the Ephemeral.io service'
  s.files         = Dir.glob('lib/**/*.rb')
  s.license       = "MIT"

  s.test_files    = Dir.glob("./{test,spec,features}/*.rb")
  s.executables   = ['eph']
  s.require_paths = ['lib']

  s.add_runtime_dependency 'commander', '~> 4.3', '>= 4.3.4'
  s.add_runtime_dependency 'rest-client', '~> 1.8', '>= 1.8.0'
  s.add_runtime_dependency 'rainbow', '~> 2.0', '>= 2.0.0'
  
  s.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  s.add_development_dependency 'coveralls', '~> 0.8', '>= 0.8.1'
end
