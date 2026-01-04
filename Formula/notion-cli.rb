class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.3/notion_darwin_amd64.tar.gz"
      sha256 "f184c1dde67dbfe75e26074fa3eafec2abac1cedabbb6ac729f1b9a57505b1ff"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.3/notion_darwin_arm64.tar.gz"
      sha256 "bdc107b1e73e5055808fcc6cde36143d74d1767d5f62e788a8a739126ed7c938"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.3/notion_linux_amd64.tar.gz"
      sha256 "c81089905119c827aebc11bba21cb732c229926bfa11453be402cc2e96009284"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.3/notion_linux_arm64.tar.gz"
      sha256 "75c97859cf0434ad715bb40be3db2865ec623e2d40e384d008ebf8795981ca09"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
