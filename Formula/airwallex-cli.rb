class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.3/airwallex-cli_0.2.3_darwin_arm64.tar.gz"
      sha256 "0aec4db9a2bff5144bbf1a47a550682b79736cf69631ee2b45a1cbe8142eb866"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.3/airwallex-cli_0.2.3_darwin_amd64.tar.gz"
      sha256 "58f86f3f7451ad3388967639d99219747a0174d8c5373ff9cbcb5aa4158342a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.3/airwallex-cli_0.2.3_linux_arm64.tar.gz"
      sha256 "d6c55c2cd30cf4fe1a02761bfc8b50e84c3bedbc7588d1bc2cbcce1cb8f403b2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.3/airwallex-cli_0.2.3_linux_amd64.tar.gz"
      sha256 "3bd31d34222db1d0fc6d79f2e910e06a0914eabe881cec858c15c9b083ef6532"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
