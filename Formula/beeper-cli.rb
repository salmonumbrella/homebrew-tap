class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.5/beeper-cli_0.2.5_darwin_arm64.tar.gz"
      sha256 "b43558d2ee6b39e431dfbaa13a8c40e9c6b2e8dfda31ef24f8145f83de248bc3"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.5/beeper-cli_0.2.5_darwin_amd64.tar.gz"
      sha256 "6a1ae66a64f68e9130d62ecd9c6216d46888403a1578a3d718155b47338cc0c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.5/beeper-cli_0.2.5_linux_arm64.tar.gz"
      sha256 "ba5029bdd8ce6deecb1da5fdae0072d0112b62abc2fb2edfd71573f9d264e584"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.5/beeper-cli_0.2.5_linux_amd64.tar.gz"
      sha256 "0fd6891517119997b4c68a55e645fb128fa86ab2db419568805f354c67b50eb2"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
