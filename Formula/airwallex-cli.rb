class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "c04643b8db7728c283f6b015500bc7502a8131de6b8f22f9e6ca484c0251d562"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "d8371afe4036098b911e48c5d9f894e2ea19b7b286f7dcb4a387e3973a9ae53a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "6c60d518b80d06d464368ab448adcc91011a12c8c5035e8f98b73a14141b3a1b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.1.0/airwallex-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "2fea13f6a6fea51c638713ec440925fd74ff678fba2d82e4295a2295674f1bf3"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
