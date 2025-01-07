# frozen_string_literal: true

require "fix"

Fix(:MySecretSalt1) do
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
