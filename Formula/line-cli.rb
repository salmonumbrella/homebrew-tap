class LineCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.1.0/line-cli_darwin_arm64.tar.gz"
      sha256 "cc75329095001bcc6ec95100692312311ce3f1f4e30dc71688e2e4f8794cb2d8"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.1.0/line-cli_darwin_amd64.tar.gz"
      sha256 "1c2da5cc0c1b5ab38a5055091598120afdc2251cfad07b5a1b64081447b7c23f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.1.0/line-cli_linux_arm64.tar.gz"
      sha256 "427850c00c97d3c3d6144434ed774d28f14a08c8b669a9d81b22e7f0cc5a96a6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.1.0/line-cli_linux_amd64.tar.gz"
      sha256 "074944dc4a0816aa7faa0b3cc54d3069a9ba9da2088cf91f2b9b9346cf04c8fa"
    end
  end

  def install
    bin.install "line"
  end

  test do
    system "#{bin}/line", "--help"
  end
end
