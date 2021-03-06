# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toy_robot/version'

Gem::Specification.new do |spec|
  spec.name          = "toy_robot"
  spec.version       = ToyRobot::VERSION
  spec.authors       = ["Ben Axnick"]
  spec.email         = ["ben+github@axnick.com.au"]

  spec.summary       = %q{Yet another Toy Robot}
  spec.description   = %q{What the world needs is more toy robots}

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard", "~> 2.14"
  spec.add_development_dependency "guard-rspec", "~> 4.7"

  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
end
