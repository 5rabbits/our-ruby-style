# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'our_ruby_style/version'

Gem::Specification.new do |spec|
  spec.name          = 'our_ruby_style'
  spec.version       = OurRubyStyle::VERSION
  spec.authors       = ['Abraham Barrera']
  spec.email         = ['abarrerac@gmail.com']

  spec.summary       = 'Code style for our Rails projects.'
  spec.description   = 'Configuration files for code analysis tools'
  spec.homepage      = 'http:://www.5rabbits.com'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables = ['our_ruby_style']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'fasterer', '0.4.0'
  spec.add_runtime_dependency 'rails', '~> 5.0'
  spec.add_runtime_dependency 'rails_best_practices', '~> 1.19'
  spec.add_runtime_dependency 'reek', '~> 1.3'
  spec.add_runtime_dependency 'rubocop', '~> 0.52'
  spec.add_runtime_dependency 'thor', '~> 0.20'
end
