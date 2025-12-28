class NotionCli < Formula
  desc "CLI for Notion to manage pages, databases, and blocks"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.1/notion_darwin_arm64.tar.gz"
      sha256 "b662c9fc9be49a99b4dc2cb59a9d52de18f14d2ae9ca965e1af539c44e823e50"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.1/notion_darwin_amd64.tar.gz"
      sha256 "466bddb234973237fb44f9f54625742117779df9cd3cb5dbd0dca232df967e13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.1/notion_linux_arm64.tar.gz"
      sha256 "f9e52453c97a4c9a4498d9b7511e57cee84ae928af3f384e9b8eea97aa4a273b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.1/notion_linux_amd64.tar.gz"
      sha256 "cfda3b046a54ebbe968929db3fd8142af721ce782ca1bf47804825ae9e9d4b16"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
