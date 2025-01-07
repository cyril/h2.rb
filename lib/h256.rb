# frozen_string_literal: true

require "digest/sha2"

# H256 module provides secure password hashing functionality using hex encoding
# @example
#   builder = H256::Builder.new("my-secret-salt")
#   hash = builder.call("my-password") # Returns a hex-encoded SHA-256 hash
module H256
  # Builder handles the creation of salted password hashes using SHA-256
  # @example
  #   builder = H256::Builder.new("my-secret")
  #   hash = builder.call("p@ssw0rd") # => "a1b2c3d4..."
  class Builder
    # @return [String] the secret salt used for hashing
    attr_reader :secret

    # Initialize a new Builder with a secret salt
    # @param secret [Object] the salt to use for hashing (will be converted to String)
    def initialize(secret)
      @secret = String(secret)

      freeze
    end

    # Generate a hex-encoded salted hash of the provided value
    # @param value [String] the value to hash
    # @return [String] hex-encoded SHA-256 hash (64 characters)
    def call(value)
      ::Digest::SHA256.hexdigest("#{value}++#{secret}")
    end
  end
end
