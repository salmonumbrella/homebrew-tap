class ControldCli < Formula
  desc "CLI for ControlD DNS management - manage devices, profiles, and DNS filtering"
  homepage "https://github.com/salmonumbrella/controld-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.1/controld-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "4dc4ed3fa1df8b8b79ee8a0c2421eb41e5f100e3c20197c50757871ced44c011"
    end
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.1/controld-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "d4d8a728178dfdbf637b0773438e63a03e23cb021d323d6b1639ca1cc26382d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.1/controld-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "1a90bd0cbb72536fa2728c8d49428b4b24a5603eb27d4553ab4d4bb241ce8a2b"
    end
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.1/controld-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "a2bb0dd8e583a6caec4eb218977d45298ddbbcfaa3bf89c9d7f8491714753009"
    end
  end

  def install
    bin.install "controld"
  end

  test do
    system "#{bin}/controld", "--help"
  end
end
