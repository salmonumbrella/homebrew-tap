class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.1/brandfetch_0.0.1_darwin_arm64.tar.gz"
      sha256 "075cd29dd93ad315504d8521cd8bb0a8ccf35c29087d38fac11dbb76d2f911e6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.1/brandfetch_0.0.1_darwin_amd64.tar.gz"
      sha256 "17098335edccb12717c166d3ecc2cba294107a350979c370a05807dd5869368d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.1/brandfetch_0.0.1_linux_arm64.tar.gz"
      sha256 "b22bc31e99106e61d7d3260a316a49c55a64361ede854cd721d4c1df92c7a002"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.0.1/brandfetch_0.0.1_linux_amd64.tar.gz"
      sha256 "ff1e4df05ed92c19404e67a474ac4cd3ac6ff6644581bfba3636866cb5dfa12d"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
