lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'suspiciouss/version'

Gem::Specification.new do |gem|
  gem.name          = 'suspiciouss'
  gem.version       = Suspiciouss::VERSION
  gem.authors       = ['Daniel Cruz Horts']
  gem.summary       = 'Reports common CSS/Sass/Less errors'
  gem.homepage      = 'https://github.com/dncrht/suspiciouss'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'pry-debugger'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
end
