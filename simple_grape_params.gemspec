# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_grape_params/version'

Gem::Specification.new do |spec|
  spec.name        = 'simple_grape_params'
  spec.version     = SimpleGrapeParams::VERSION
  spec.authors     = ['piasekhgw']
  spec.email       = ['piaseckiwojciechh@gmail.com']
  spec.summary     = 'Simple abstraction for Grape params'
  spec.description = 'Simple abstraction for Grape params validation and coercion'
  spec.homepage    = 'https://github.com/piasekhgw/simple_grape_params'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'grape', '>= 0.10'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
