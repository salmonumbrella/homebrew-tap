class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.0/airwallex-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "822550955b078383773e6c66ce49e94803a34eeae70948daaaf697db510a18c7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.0/airwallex-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "9d67801bc4f6329d1a0323f129564849feae8293d6fd6c1cc491d4d547768c72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.0/airwallex-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "af79b71a52a15e7998da4070e583d37852cf299b6b32aa8d4f2469073708a140"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.0/airwallex-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "6a6367dc344492a4cd680513291cd0dc2611d67f6b58efbaeced38ed74eac40c"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
