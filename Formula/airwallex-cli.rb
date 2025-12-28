class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.2/airwallex-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "e250f7683775b488dbbb47a4e074339d5a0802376c37a5f8c3cc4de35b39994d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.2/airwallex-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "475d4319a223ba09bc4e6962d0ea0b11c87d365b40a16e38dcd7e69c4f1a2d14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.2/airwallex-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "0f811dfdcf8d928b2da8725d1af81f278435b27453963be745e08195de03c74c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.2/airwallex-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "943367425b58f67158d326a4fcb2f0a2ac813aaf945c2ad972687fb6baef327a"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
