# frozen_string_literal: true

require_relative "_test_helper"

Fix[:MySecretSalt1].test do
  require_relative '../lib/h256'

  ::H256::Builder.new("my-secret")
end

Fix[:MySecretSalt2].test do
  require_relative '../lib/h256'

  ::H256::Builder.new(nil)
end
