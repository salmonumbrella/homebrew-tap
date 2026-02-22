class InstantlyCli < Formula
  desc "Agent-friendly CLI for Instantly.ai"
  homepage "https://github.com/salmonumbrella/instantly-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/instantly-cli/releases/download/v0.1.0/instantly-cli_darwin_arm64.tar.gz"
      sha256 "29efa2a048e2c31c6f558522a357e739bddd084d343806a2b057d23166edffd9"
    end
    on_intel do
      url "https://github.com/salmonumbrella/instantly-cli/releases/download/v0.1.0/instantly-cli_darwin_amd64.tar.gz"
      sha256 "8b4dacd8c2596bc3c316cb5be479f3a13246baa21ca7c91f8990a28859fc0bef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/instantly-cli/releases/download/v0.1.0/instantly-cli_linux_arm64.tar.gz"
      sha256 "90a685c7c8f0666e3d50931179f835cc32c4ba2b09ddf463ec9183822ef850fd"
    end
    on_intel do
      url "https://github.com/salmonumbrella/instantly-cli/releases/download/v0.1.0/instantly-cli_linux_amd64.tar.gz"
      sha256 "2ea9272ca18b727a2071144754428beff73f92cbd0e07120c33d774fb30b4979"
    end
  end

  def install
    bin.install "instantly"
  end

  test do
    system "#{bin}/instantly", "--help"
  end
end
