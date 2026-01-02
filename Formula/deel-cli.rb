class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.3.0/deel_0.3.0_darwin_arm64.tar.gz"
      sha256 "e31a1fac4c1c4908cdb72b18d0e731c8cc10c578ee945e15f25d9d1a0876746d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.3.0/deel_0.3.0_darwin_amd64.tar.gz"
      sha256 "1af91fa68df556673befdc1c82d6100c915f0598cf6b93cb40a13d825bce4150"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.3.0/deel_0.3.0_linux_arm64.tar.gz"
      sha256 "3c3ff1164e40eb52373e5ac0be58ab3eecc8ce157757ead89614f5447fa02b24"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.3.0/deel_0.3.0_linux_amd64.tar.gz"
      sha256 "4b6262bde7b5a60c60a89ab66329339d6bb253fb020ad6e657e9c261e5280441"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
