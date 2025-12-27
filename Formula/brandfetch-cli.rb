class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.2.0/brandfetch_0.2.0_darwin_arm64.tar.gz"
      sha256 "380be267fe435e65ed25e490213702a26d324f13f3fbe5cf38db6b43f490b377"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.2.0/brandfetch_0.2.0_darwin_amd64.tar.gz"
      sha256 "1bc21c4f2028b4f1c7bce5ee440172717f31842fa816c7ace1147e89edb53fca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.2.0/brandfetch_0.2.0_linux_arm64.tar.gz"
      sha256 "76e9ab712bceb169f8abf299caba6117d74e1822f7c238426262264c41cb9fca"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.2.0/brandfetch_0.2.0_linux_amd64.tar.gz"
      sha256 "5d0896eaaf03b9bb0d70f1f4b7f00fe5e60bf0933244843cc2676c9a6e88587c"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "version"
  end
end
