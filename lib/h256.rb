# frozen_string_literal: true

require "digest/sha2"

# H256 module.
module H256
  # Builder class.
  class Builder
    attr_reader :secret

    def initialize(secret)
      @secret = secret
    end

    def call(value)
      ::Digest::SHA256.hexdigest("#{value}++#{secret}")
    end
  end
end
