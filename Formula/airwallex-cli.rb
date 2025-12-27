class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "4c698061a50414876cd45a0c326b01b2589c1c3a59abe680b30260190b47d8c4"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "68c09dfa08c77fd5faa3031048548dc2e8daca71eaebbd5a736927cc4d8cff70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "7071a42554f4a2c8357602ceff667f8ba181efc804292b115d887fb21f62f8fb"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "38225219a0542bbbd6967e6ba67922c306d15106fd875e5f6022d00c76f347c4"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    assert_match "airwallex", shell_output("#{bin}/airwallex --help")
  end
end
