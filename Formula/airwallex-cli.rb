class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.5/airwallex-cli_0.2.5_darwin_arm64.tar.gz"
      sha256 "9258eba5bcf5998319696073d6dacdac581b3ac1a52964362d0beb6f2ccf221c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.5/airwallex-cli_0.2.5_darwin_amd64.tar.gz"
      sha256 "14220f42d7b7ed69467f07ff3fe379000e204d8541e20048f9731f9fba939b9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.5/airwallex-cli_0.2.5_linux_arm64.tar.gz"
      sha256 "30cfefed61c10523a47ff0bd931122bf0de2ef4dbfaef67bfadc612836c5ae3e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.5/airwallex-cli_0.2.5_linux_amd64.tar.gz"
      sha256 "08e95de4d87be3377a411bff91ca87ef059203a45307c807c447dc52c03da3aa"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
