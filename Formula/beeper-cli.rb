class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.1/beeper-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "7fb41ec13479032bcd7926153854952c05dc2970fe7da8896bd854d13e1a736f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.1/beeper-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "19a5e2b852bdb67f5cd320ff42aa0274c4b5f88ca5ef92766b7835d47366b940"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.1/beeper-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "c79e0a74317d498ed1198dd2d66eda637720b2fb699563b18840f479c578a7b7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.1/beeper-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "f3382ed0679e3ea319b88707f1563b9006d57d91ffe84191e8bbcfcfe600d7f2"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
