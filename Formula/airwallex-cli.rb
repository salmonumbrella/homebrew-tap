class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.1/airwallex-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "a79ecf08463349cc8629cf6f8b35f90821bdbb248d4005996d3150a49f939033"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.1/airwallex-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "ba35285c070baaa49e146ad15187ea353ee0a10ed3ce8be6c0e062c43dcb7f7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.1/airwallex-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "106dfb0afd8010657ec692b42bc992bf1f154ad02fa81815b80935c7f23eb9db"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.1/airwallex-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "9e70f42f8eb10c609209080ed683af94cbf65fcf1c7aabe30a02e1ab1bc55dba"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
