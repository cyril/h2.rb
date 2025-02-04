# frozen_string_literal: true

require "fix"

Fix(:MySecretSalt2) do
  on :call, nil do
    it MUST eq "cfc0c0607a3380f7975346b30c14af8284f5493d9781b0ed847f499f01b4768e"
  end

  on :call, "p@ssw0rd" do
    it MUST eq "33561bb980384732873d85da526fc61f8f702d303c24ebb858219bb7c4153ab1"
  end

  on :call, "シークレット" do
    it MUST eq "8c153d0c8383bc79b5b534bb2c71c9d5f33f483ddd220c1b62cf2c5d092db49c"
  end
end
