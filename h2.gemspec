# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = "h2"
  spec.version      = File.read("VERSION.semver")
  spec.author       = "Cyril Kato"
  spec.email        = "contact@cyril.email"
  spec.homepage     = "https://github.com/cyril/h2.rb"
  spec.summary      = "One-way SHA256 function with salt."
  spec.description  = spec.summary
  spec.license      = "MIT"
  spec.files        = Dir["LICENSE.md", "README.md", "lib/**/*", "bin/h2"]
  spec.executables  = ["h2"]
  spec.required_ruby_version = ::Gem::Requirement.new(">= 3.0")

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "fix", "~> 1.0.0.beta8"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop-md"
  spec.add_development_dependency "rubocop-performance"
  spec.add_development_dependency "rubocop-rake"
  spec.add_development_dependency "rubocop-thread_safety"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "yard"
end
