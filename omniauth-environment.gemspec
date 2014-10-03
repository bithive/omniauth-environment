# coding: utf-8
require File.expand_path('../lib/omniauth-environment/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-environment'
  spec.version       = OmniAuth::Environment::VERSION
  spec.authors       = ['Jason Meinzer']
  spec.email         = ['jason@bithive.net']
  spec.description   = %q{Environment strategy for OmniAuth}
  spec.summary       = %q{Environment strategy for OmniAuth}
  spec.homepage      = 'https://github.com/bithive/omniauth-environment'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_runtime_dependency 'omniauth', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
