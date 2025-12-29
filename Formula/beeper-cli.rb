class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.5/beeper-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "87fc7493b2ed5084e66e776c73d26de9ff931c05e3e25ce7d3f739e8c3dad392"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.5/beeper-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "4a20a35fd367276aa56f95c8f8c08872e71891e351b368dee4243b96596b2343"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.5/beeper-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "bf424a3bb42bae70996c44ce353d5429885f084364e9c24c66275202d7775666"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.5/beeper-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "a9df320821cb9ef32a7ccee2fc5f061e2f5246450bab20a1e373358895345154"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
