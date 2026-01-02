class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.2/deel_0.2.2_darwin_arm64.tar.gz"
      sha256 "61569acd7bf8a32d83cf1a765cff2c1fa01cbe481edc47138885f6cbda08188e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.2/deel_0.2.2_darwin_amd64.tar.gz"
      sha256 "8ae5b7b5f307a81813ad3722046df80d5a73dde15b4c8a602ad02cf429fa40e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.2/deel_0.2.2_linux_arm64.tar.gz"
      sha256 "60ef6cce5598109ecd3719c451b0c5007f1450fedd9c5b03698d4197c9b47525"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.2/deel_0.2.2_linux_amd64.tar.gz"
      sha256 "83cf686cf911bf1aa86fc9a6f2d019d0119c58f30e862fc03664c8b563e2859f"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
