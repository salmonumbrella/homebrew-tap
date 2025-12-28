class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.3/beeper-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "e33db1155c29d4de6c6d9bdcd48c20dc3ca94c158f7cf12cb1ac74fb162246ef"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.3/beeper-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "7186cbae85a10a31b9078a56d3211c5b8a854c1a0b8e77ff20a22f94c19cf766"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.3/beeper-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "106b990f4d808fbb54b6538e40915b595ce14b01c744d700ab64e2d8e5e8528d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.3/beeper-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "c54f01680152cf402d51144c5041c1025717e6007004ccde86cb9455e0b07231"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
