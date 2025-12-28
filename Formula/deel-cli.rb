class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.1/deel_0.1.1_darwin_arm64.tar.gz"
      sha256 "bd3ec7c9a4d7bf01bf77c3bcd6207567da38e5b3d9e14688e6b6957e9a26c272"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.1/deel_0.1.1_darwin_amd64.tar.gz"
      sha256 "6c1ecd020d995e9419f1cf5a7d94b1ab70a850e5a063854814319b9d145f9d5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.1/deel_0.1.1_linux_arm64.tar.gz"
      sha256 "b16a378c11c01230ce9ef09162c3610f039f39fbcfb021f58b16804c68e32ddf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.1/deel_0.1.1_linux_amd64.tar.gz"
      sha256 "836f0ccef1c93b5e63f2c5a73876054c7923fce4ec9f4c908ad837fca57a17a9"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
