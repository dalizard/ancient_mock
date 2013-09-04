# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ancient_mock/version'

Gem::Specification.new do |spec|
  spec.name          = "ancient_mock"
  spec.version       = AncientMock::VERSION
  spec.authors       = ["Dimitar Haralanov"]
  spec.email         = ["dimitar@forebits.com"]
  spec.description   = %q{Testing library from scratch}
  spec.summary       = %q{Ancient Mock Testing Lib}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
