class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_darwin_amd64.tar.gz"
      sha256 "47d4b86b52cb36fa27db7083cf9d89dcbab1fd320c77a5603e9ae145244d4518"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_darwin_arm64.tar.gz"
      sha256 "a82df20d0472370e1572f637333230f075c2cc4e7f3919394d6ce8a11a4ce164"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_linux_amd64.tar.gz"
      sha256 "131fe55cfa4d62e95514253d8c6fb373aa6d5083549080ab69b14d4a49c5b192"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_linux_arm64.tar.gz"
      sha256 "49457d5c810b4bba571ad0f344497f8d240dec0a0791719323fb8f3bb7d8150a"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
