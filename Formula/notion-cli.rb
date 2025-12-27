class NotionCli < Formula
  desc "CLI for Notion to manage pages, databases, and blocks"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.0/notion_darwin_arm64.tar.gz"
      sha256 "1e6bfc727203c258c881f13421da7ea8ee0e14b162234acc2d1c98699fcf9974"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.0/notion_darwin_amd64.tar.gz"
      sha256 "c07e87f3c45b08b2a02e701c62dfb5927be46c15105b2494315dcef2c52bf633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.0/notion_linux_arm64.tar.gz"
      sha256 "32132db12a38f453e5d5d9efe43b11234d75ed0ce29e35be34ce1365bebcdc8d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.0/notion_linux_amd64.tar.gz"
      sha256 "351f1456e662f82ec7fa85674cee075e754c5de59ee3b7800ad74ea5aa17f6fe"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
