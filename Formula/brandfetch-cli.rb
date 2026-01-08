class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_darwin_arm64.tar.gz"
      sha256 "990645f280c4b48417fbbe584118dbb835b8bdddcb0c259c8e085b45829fe10a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_darwin_amd64.tar.gz"
      sha256 "e1cfa426a33f90d63e543cd29646d1e8b1e760be1f010d9a9c00bf4d6c862e35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_linux_arm64.tar.gz"
      sha256 "703986edc726ea8c47c0730628faa0fda922f92d1523af74bc4e3ffe8810b2b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_linux_amd64.tar.gz"
      sha256 "734acaee0f17d899ae21ba89c2dd31633a0cefca01e5e87fb801390d7206aad2"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
