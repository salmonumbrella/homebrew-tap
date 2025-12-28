class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.2/deel_0.1.2_darwin_arm64.tar.gz"
      sha256 "b069905e761cf886deced925a2f956d9fa1d3e2cf8bdfa4a19b28d5a160e6156"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.2/deel_0.1.2_darwin_amd64.tar.gz"
      sha256 "90803c8a0476a33affdb2f717ac571110f91facf54e02b905f1690948bd5f937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.2/deel_0.1.2_linux_arm64.tar.gz"
      sha256 "104589aa8a908602865ec43793123797f9129ab2ace69fbc909e2c3d27e97818"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.2/deel_0.1.2_linux_amd64.tar.gz"
      sha256 "b718206338f488999f819e8f0838f407ff6f9fbc9cf37be4aba1029ac6428ab7"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
