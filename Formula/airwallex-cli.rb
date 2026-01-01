class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.2/airwallex-cli_0.2.2_darwin_arm64.tar.gz"
      sha256 "84e29dbcd6590d6444c4705b205e312cf616ccac81bf47292a03070fcfc82520"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.2/airwallex-cli_0.2.2_darwin_amd64.tar.gz"
      sha256 "3aa8bcf748d31b22320ef42323613908313a3732a586724d2f7b3ec283afde0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.2/airwallex-cli_0.2.2_linux_arm64.tar.gz"
      sha256 "d37add0d75d53dac6937bdf647e786620af91611d5f4bd39998288fa8e568cff"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.2/airwallex-cli_0.2.2_linux_amd64.tar.gz"
      sha256 "34606797e8f92db6b0d04ac611ca0c154feaf9156d327e45c80e2b6709529429"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
