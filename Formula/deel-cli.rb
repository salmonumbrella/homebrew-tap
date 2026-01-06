class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.5/deel_0.4.5_darwin_arm64.tar.gz"
      sha256 "ea9e39df950c31a119c8e30da12c056a603e11badbb14da5c39614bd95fd72a7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.5/deel_0.4.5_darwin_amd64.tar.gz"
      sha256 "3c792a73da8fd169a85fd9b382d8fa58aa4b68a0b893057a99fbb982984a0988"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.5/deel_0.4.5_linux_arm64.tar.gz"
      sha256 "1713f26a52d0169424dbb459f5f62466c57bbc1dd946fa8e941a03f0ea192bf7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.5/deel_0.4.5_linux_amd64.tar.gz"
      sha256 "89efab613832050b67e3fd298d495f702c3c0fecb459a7290d1c0662a775b153"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
