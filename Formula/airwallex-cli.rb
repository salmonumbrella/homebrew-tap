class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.8/airwallex-cli_0.2.8_darwin_arm64.tar.gz"
      sha256 "beb328616dc8bb6acd3c8aae0f7164b0e036b4d18ecf24d3d36db2b1e4b2cb0e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.8/airwallex-cli_0.2.8_darwin_amd64.tar.gz"
      sha256 "972db8252a64e39f268acf6f471ab34742aa5880a4bb2e00748d3bc581f7b257"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.8/airwallex-cli_0.2.8_linux_arm64.tar.gz"
      sha256 "5411b002908d7dca9e71ad838bb19e756beaa11cf0f9597cddf8cf3aed007e7f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.8/airwallex-cli_0.2.8_linux_amd64.tar.gz"
      sha256 "11a4ec8d6c5bc1f7d0517842389b8e4a965186de42db588d34d26aa9b7fc2cf9"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
