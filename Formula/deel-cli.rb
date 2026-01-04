class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.1/deel_0.4.1_darwin_arm64.tar.gz"
      sha256 "5d0fe5c574ad982aea484cba261edea643f682bd85f9c7714b3e48216ceefa20"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.1/deel_0.4.1_darwin_amd64.tar.gz"
      sha256 "b6ededd76d74f3e0998c2210e7bbeffbe2731c280f3b95811e63a792f50b6a47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.1/deel_0.4.1_linux_arm64.tar.gz"
      sha256 "643062b57655459fe8d457c3cdebf78d79587f8d31edc2450fce2c3c5389425a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.1/deel_0.4.1_linux_amd64.tar.gz"
      sha256 "de1cc59efd6fac5a4307e9b36e2a5c7647c394a0faa2b53ab8444221e62b6ff2"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
