class NotionCli < Formula
  desc "Command-line interface for the Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.5.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.29/notion_0.5.29_darwin_arm64.tar.gz"
      sha256 "3ca34601432b3d1986e33655deb7e1fe0b2c68a00d5ca24ed76590e0f0dc1c64"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.29/notion_0.5.29_darwin_amd64.tar.gz"
      sha256 "0d68527b882eae16c2ed12165185fd2365058320f8b39f29578c0646e237aa48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.29/notion_0.5.29_linux_arm64.tar.gz"
      sha256 "0c279fcade1ed56595a40b578fa11e822464592e7dc71774fd6567854e69b7ea"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.29/notion_0.5.29_linux_amd64.tar.gz"
      sha256 "d41bdd019ede3e9aa7e25cf4ce788d011fcb67259f2d30486177bca0aeb02151"
    end
  end

  def install
    bin.install "ntn"
  end

  test do
    system "#{bin}/ntn", "--help"
  end
end
