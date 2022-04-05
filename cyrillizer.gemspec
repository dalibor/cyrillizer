# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cyrillizer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dalibor Nasevic"]
  gem.email         = ["dalibor.nasevic@gmail.com"]
  gem.description   = %q{Character conversion from latin to cyrillic.}
  gem.summary       = %q{Character conversion from latin to cyrillic and vice versa.}
  gem.homepage      = "http://github.com/dalibor/cyrillizer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cyrillizer"
  gem.require_paths = ["lib"]
  gem.version       = Cyrillizer::VERSION
  gem.license       = "MIT"

  gem.add_development_dependency "rspec", "~> 3.11.0"
end
