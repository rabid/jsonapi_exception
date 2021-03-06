# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jsonapi_exception/version"

Gem::Specification.new do |spec|
  spec.name          = "jsonapi_exception"
  spec.version       = JsonapiException::VERSION
  spec.authors       = ["James Harton"]
  spec.email         = ["james@rabidtech.co.nz"]

  spec.summary       = "Simple wrapper to turn exceptions into JSONAPI compatible hashes"
  spec.description   = "We keep needing this, so we made it."
  spec.homepage      = "https://github.com/rabid/jsonapi_exceptions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.42"
  spec.add_development_dependency "faker"
end
