class UdeputyUcli < Formula
  desc "Deputy workforce management CLI"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.16/deputy-cli_0.1.16_darwin_arm64.tar.gz"
      sha256 "a54910a3c9aeebbe88a70d9a90deaf860333c5b8e6af2b3b9553540166f8edeb"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.16/deputy-cli_0.1.16_darwin_amd64.tar.gz"
      sha256 "426a49529a6a62991318bbae6a04b82b253a308a506739a6e19c1b97ac51a8a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.16/deputy-cli_0.1.16_linux_arm64.tar.gz"
      sha256 "463a87cbcbf1bc4f7d5fbdb0f1fabb1cbeeec274fe3f3a3b7649d03027c7be24"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.16/deputy-cli_0.1.16_linux_amd64.tar.gz"
      sha256 "0b5e594ea8e93e5edb19b0f4b65b2cad47111b512d8c0bf6316568705886a3ef"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
