class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.8/beeper-cli_0.1.8_darwin_arm64.tar.gz"
      sha256 "d857d7404c6781d5bc944954ac20b249b231cdd195c2a04973290abfbb148c4c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.8/beeper-cli_0.1.8_darwin_amd64.tar.gz"
      sha256 "3096940d853a203d966330d52e0fd503bd322b18488d5eab9b56239fca1e6f0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.8/beeper-cli_0.1.8_linux_arm64.tar.gz"
      sha256 "00d21a8e9a7b84a01269bb2f8a9147be0e93d34bc2e016b4397afd8e98b4bdb8"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.8/beeper-cli_0.1.8_linux_amd64.tar.gz"
      sha256 "3fcf8cf18db578f5dcb704df54426852ea1ebf22e55365df3150ccae8e35cd58"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
