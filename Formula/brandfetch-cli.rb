class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.2/brandfetch_0.1.2_darwin_arm64.tar.gz"
      sha256 "02080652cb8a2afb8dabd0b7f75e63d9546591ad5aacd875abb08f790ccff13a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.2/brandfetch_0.1.2_darwin_amd64.tar.gz"
      sha256 "e553ae4bf922a13ec6044764d3bba8bdb7247bb11d4d62546a5ef9455f1c74cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.2/brandfetch_0.1.2_linux_arm64.tar.gz"
      sha256 "2143c53d8499d09f0c820a059607d15290b45e71a5c9dea646c9e286dbd78868"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.2/brandfetch_0.1.2_linux_amd64.tar.gz"
      sha256 "b26555671882322d99eefed695fe4aab0f50f13ced9883276fd525a6bc0941f0"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
