class ControldCli < Formula
  desc "CLI for ControlD DNS management - manage devices, profiles, and DNS filtering"
  homepage "https://github.com/salmonumbrella/controld-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "fe3be12be0d3c7b87217ee300a2bede5a45176322d8057cb171a0d100e84e246"
    end
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "384193ab3f0de4d2ba945230a0e92b62ec62470923b15e73a10165e72cbeb224"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "05a90586ce7973be514f7f8c5e1f4b139aec1d708d37f6b0036b8bbfe7ccffd7"
    end
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "ead409aaf72ae43b0ae38f28d03b0a54585956350c6958446d61a2dca9d6b453"
    end
  end

  def install
    bin.install "controld"
  end

  test do
    system "#{bin}/controld", "--help"
  end
end
