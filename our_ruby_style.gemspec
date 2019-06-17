lib = File.expand_path('lib', __dir__)
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

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.executables = ['our_ruby_style']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.3.0'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.8'

  spec.add_runtime_dependency 'fasterer', '0.4.1'
  spec.add_runtime_dependency 'rails', '~> 5.0'
  spec.add_runtime_dependency 'reek', '~> 4.8.1'
  spec.add_runtime_dependency 'rubocop', '~> 0.68.0'
  spec.add_runtime_dependency 'thor', '~> 0.20'
end
