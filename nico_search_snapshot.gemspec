# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nico_search_snapshot/version'

Gem::Specification.new do |spec|
  spec.name          = "nico_search_snapshot"
  spec.version       = NicoSearchSnapshot::VERSION
  spec.authors       = ["ishidamakot"]
  spec.email         = []

  spec.summary       = %q{nicovideo snapshot search utility.}
  spec.description   = %q{nicovideo snapshot search utility.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httpclient", '>= 2.6.0'
  spec.add_development_dependency "bundler", "~> 1.10.a"
  spec.add_development_dependency "rake", "~> 10.0"
end
