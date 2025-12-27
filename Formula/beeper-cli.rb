class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "8a3ecd078b0747fe6a8ebcab25f24b0b1d14a9b6c0562c1561ee88176fa069f2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "76683d3744893d5777549b3e4e0cef4baac14002547e127f7d0b6b921b55364a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "21cc970b529602cb4f9ce9b9ee7fcca7a24b276bd27f46432b678f3bdd6dea69"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "c2df2792cce443cbbb792ce1e30850e08c817c3f5b12212de9fde5ba20e04bdf"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
