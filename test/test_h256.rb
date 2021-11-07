# frozen_string_literal: true

require_relative "_test_helper"

Fix :MySecretSalt1 do
  on :call, nil do
    it MUST eq "34a2cd3c8cc89c5f7a3c198c0aa651d6315a2281e7f5cd72d27f23b4c6a6e1cb"
  end

  on :call, "p@ssw0rd" do
    it MUST eq "f8ab042dd6f0ee03347b6950b270ac91fd5a95b117825f4cb5782b9af62421a3"
  end

  on :call, "シークレット" do
    it MUST eq "35a36f9c6246596cf353d0e545244a650404475ffdfe589b5ebae084c80159b5"
  end
end

Fix[:MySecretSalt1].against { H256::Builder.new("my-secret") }

Fix :MySecretSalt2 do
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

Fix[:MySecretSalt2].against { H256::Builder.new(nil) }
