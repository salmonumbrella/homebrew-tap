class AirwallexCli < Formula
  desc "CLI for Airwallex to manage transfers, beneficiaries, and balances"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.7/airwallex-cli_0.2.7_darwin_arm64.tar.gz"
      sha256 "c4f6fee641960e34522ccad4fe7794a26fdaf648d5b5355b4b06e4a1b15d16d2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.7/airwallex-cli_0.2.7_darwin_amd64.tar.gz"
      sha256 "272c28a692f932aedcbe398dda8203973b85657de985adbbf0e254e4a735c06d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.7/airwallex-cli_0.2.7_linux_arm64.tar.gz"
      sha256 "2972ab5d36a8045c20241d8e1e8672863d3413f8f56974570859ecc9f225bb0b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.7/airwallex-cli_0.2.7_linux_amd64.tar.gz"
      sha256 "3a2d6b8d8f20e3d571fa8bd9d49156a799cce3820723761b21d9252b26dae751"
    end
  end

  def install
    bin.install "airwallex"
  end

  test do
    system "#{bin}/airwallex", "--help"
  end
end
