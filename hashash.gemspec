# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hashash/version"

Gem::Specification.new do |spec|
  spec.name          = "hashash"
  spec.version       = Hashash::VERSION
  spec.authors       = ["Surim Kim"]
  spec.email         = ["kimsuelim@gmail.com"]

  spec.description    = "Hashash is a collection of classes and mixins that make it more useful when working with JSON APIs"
  spec.summary        = "Your friendly neighborhood JSON API library."
  spec.homepage      = "https://github.com/kimsuelim/hashash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop",  "~> 0.49.0"
  spec.add_development_dependency "coveralls", "~> 0.8.21"
end
