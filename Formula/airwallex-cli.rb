class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.6/airwallex-cli_0.2.6_darwin_arm64.tar.gz"
      sha256 "103e0c794095ca924c3032da005bd389bae020f2a4f3c4546e6d6196e9c2eef5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.6/airwallex-cli_0.2.6_darwin_amd64.tar.gz"
      sha256 "296d330e2a32b288e55d3670a81e530dd31706cc1141d41da57e72f59f95a011"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.6/airwallex-cli_0.2.6_linux_arm64.tar.gz"
      sha256 "926c1d11a415353bec595bd0439090860be84610aadaae6f9e05c2a7a4405a12"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.6/airwallex-cli_0.2.6_linux_amd64.tar.gz"
      sha256 "7fdba0ab362a9f703d977702c63175e002619ed97422f05371815dcde28d7c9c"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
