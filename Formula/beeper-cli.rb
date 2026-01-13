class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.7/beeper-cli_0.1.7_darwin_arm64.tar.gz"
      sha256 "893abdb4b897687484785039a60fca956418deb10fdd8dc36c8043fb0fc7bfe1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.7/beeper-cli_0.1.7_darwin_amd64.tar.gz"
      sha256 "2c64385e1f241ff7e02e23888340c3ff85cd37dfc0f280ce5dcdd1466a8af467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.7/beeper-cli_0.1.7_linux_arm64.tar.gz"
      sha256 "c88e0eaff82c8e90e85ffa7e60e1e5d02fbb92aa98e9e14c699ef7e3ab6f776f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.7/beeper-cli_0.1.7_linux_amd64.tar.gz"
      sha256 "583a4d390203015d45e8fa6c83b9e47e2c0a02e4b94815925e36e99fc7adcffa"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
