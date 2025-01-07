# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = "h256"
  spec.version      = File.read("VERSION.semver")
  spec.author       = "Cyril Kato"
  spec.email        = "contact@cyril.email"
  spec.summary      = "One-way SHA256 function with salt."

  spec.description  = <<~DESC
    H256 reads its configuration from the ~/.h256 file at initialization. This file, which should be readable by its owner only, have the salt value.
  DESC

  spec.homepage     = "https://github.com/cyril/h256.rb"
  spec.license      = "MIT"
  spec.files        = Dir["LICENSE.md", "README.md", "lib/**/*", "bin/h256"]
  spec.executables  = ["h256"]

  spec.required_ruby_version = ">= 3.1.0"
  spec.metadata["rubygems_mfa_required"] = "true"
end
