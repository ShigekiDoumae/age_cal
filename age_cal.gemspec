# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'age_cal/version'

Gem::Specification.new do |spec|
  spec.name          = "age_cal"
  spec.version       = AgeCal::VERSION
  spec.authors       = ["Shigeki Doumae"]
  spec.email         = ["shigeki.doumae@gmail.com"]
  spec.description   = %q{Get the age from date.}
  spec.summary       = %q{Get the age from date.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
