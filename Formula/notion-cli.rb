class NotionCli < Formula
  desc "CLI for Notion to manage pages, databases, and blocks"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.2.0/notion_darwin_arm64.tar.gz"
      sha256 "a30a55e98eb870655c9f27502ff72a8adecb8ce2bd0c21b121b5a20fcd3a9e88"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.2.0/notion_darwin_amd64.tar.gz"
      sha256 "fcb5760a2d7049f49eefc970fa5805f1f79ef6b2f53e00c0e81d24d0ffb2cef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.2.0/notion_linux_arm64.tar.gz"
      sha256 "4f5e6eb572221fa8abd350a63efe7193928a6aed625b2def6b2cc96fbbba011f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.2.0/notion_linux_amd64.tar.gz"
      sha256 "a973ba25cd2a7882c65b59c73bd021f698d2e29d71ba326a2d876adc6f9627f9"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
