class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.2/brandfetch_0.0.2_darwin_arm64.tar.gz"
      sha256 "11445939580d8acfcf5db06a48ae502501fe3780a8c107d1b113fb889b20e673"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.2/brandfetch_0.0.2_darwin_amd64.tar.gz"
      sha256 "c64ab5076286234852c5054e7c4f76d5c6f5268a93099084691fa07a4b6ccedf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.2/brandfetch_0.0.2_linux_arm64.tar.gz"
      sha256 "1a029120f83b591661d1496b0b98f52531029025966596b85b47a5d0cd555a56"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.2/brandfetch_0.0.2_linux_amd64.tar.gz"
      sha256 "2e4f91d467143cfb568679a4d627c37960e95350e24d45846544e39e16517e43"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
