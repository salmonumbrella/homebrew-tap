class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.3/airwallex-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "34b07fb6ade50a5dea8f48098fcf636ef103afdc934f5aadb2d44b35570161b0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.3/airwallex-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "938ba4f181e8a2ec3e566f06b630fe79b1aa09657968f37649f60a6301f468e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.3/airwallex-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "1801ec849c417a46e96b062cb0d2a7bf31ee5174437c7ce5803f03295b60c8f2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.3/airwallex-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "65b1c4645f5d861c62bfe1855622a1dffbf7ddd0b96494835a554c8c86476e35"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
