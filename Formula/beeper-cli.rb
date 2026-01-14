class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.0/beeper-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "b6e82c1a20ee85a63b452f9303571831611cc7a48a36e18058bb461660b3978d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.0/beeper-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "5b5ed17f2d1446a788042d9bea461b6acc0a258e24c7d0833302c153e1c0c677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.0/beeper-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "bccfc0a28d764256a9990e781cdd0bef3706814eb4a8084a80064520cbccac67"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.0/beeper-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "299126aa50b85c58a3fab4192536a1a930d7903eccfc63ba0767d69e9cb0b876"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
