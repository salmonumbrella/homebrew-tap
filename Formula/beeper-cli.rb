class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.2/beeper-cli_0.2.2_darwin_arm64.tar.gz"
      sha256 "f9fc54f48eb7f537d28c7a3a151376f054aa35fec5823c0ba9cac55cccf7cdce"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.2/beeper-cli_0.2.2_darwin_amd64.tar.gz"
      sha256 "73514cd75f843db26ef6023547eadb0dd201f7b3a1a45b5c58f53d1db98fa049"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.2/beeper-cli_0.2.2_linux_arm64.tar.gz"
      sha256 "f0376ac111c2391d2209e2b76f448cf39ff347d45c733f628fb480a871d0cb42"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.2/beeper-cli_0.2.2_linux_amd64.tar.gz"
      sha256 "df9cafdaf3d3b0453ff52cdfe7270881cb2c72f0c9e262438f18cc993adec0ff"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
