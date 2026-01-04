class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.4/airwallex-cli_0.2.4_darwin_arm64.tar.gz"
      sha256 "39d2c6a17f585dd995e1ab9681d514c76c63035437a4670e127c90637f6b0e77"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.4/airwallex-cli_0.2.4_darwin_amd64.tar.gz"
      sha256 "55ff2f66b727e5b7d54c51734f5ea04ce8da5044ff5e231a6a8ecb14d23148b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.4/airwallex-cli_0.2.4_linux_arm64.tar.gz"
      sha256 "294798cbc89295a55826e003a3480cd80a73ff7c5b73ce3df56817df057c0b6d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.4/airwallex-cli_0.2.4_linux_amd64.tar.gz"
      sha256 "8fd4e7ae0e18da8614266b8f104f1a7147cdc2fdbbf98c908324702b4326f610"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
