class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.4/airwallex-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "caf48d29d9ff8fff98610f3ec207fbf9b3c9f9268fdd18bb0820cfea1aa2a6d4"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.4/airwallex-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "6aaf85f190ba985cf19d90136b514dbb8a79e13fe8634d527a89870271b3f358"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.4/airwallex-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "098fcec08e9cf9896146dd3a55052aa4d97faace67eec1e17d47b890f4694245"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.4/airwallex-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "c988a0eddc582d2ac0bc45ee77a8353f13d11c95b505777fcda687ebc794c6f8"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
