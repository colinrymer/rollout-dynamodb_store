# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rollout/dynamodb_store/version'

Gem::Specification.new do |spec|
  spec.name          = "rollout-dynamodb_store"
  spec.version       = Rollout::DynamodbStore::VERSION
  spec.authors       = ["Colin Rymer"]
  spec.email         = ["colin.rymer@gmail.com"]
  spec.summary       = %q{An AWS DynamoDB storage engine for the Rollout gem.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/colinrymer/rollout-dynamodb_store"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
