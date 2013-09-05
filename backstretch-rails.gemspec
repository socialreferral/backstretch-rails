# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backstretch-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "backstretch-rails"
  gem.version       = Backstretch::Rails::VERSION
  gem.authors       = ["Andre Meij"]
  gem.email         = ["andre@socialreferral.com"]
  gem.description   = %q{Rails asset pipeline packaging for the Backstretch jQuery plugin, following the version number of the Backstretch project.}
  gem.summary       = %q{Rails asset pipeline packaging for the Backstretch jQuery plugin}
  gem.homepage      = "https://github.com/socialreferral/backstretch-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", "> 3.1"
  gem.add_development_dependency "rake"
end
