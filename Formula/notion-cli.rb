class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.7/notion_darwin_amd64.tar.gz"
      sha256 "0bae651f02841eff4ee79b5eb169c90be5b51e02488cb29fe37b75d105209d6b"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.7/notion_darwin_arm64.tar.gz"
      sha256 "d85abe3fe4f1618508a9233940b4e5ca83d0eda446e0c152985ee4d4bd8b3d47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.7/notion_linux_amd64.tar.gz"
      sha256 "aad796796b2144379a2ffcde8b78272807a1c75b00a42bcd7e4747886110b460"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.7/notion_linux_arm64.tar.gz"
      sha256 "0d3ffc851a4552514017e70eb2a461e119d99180ac9278ae26c013484c71e21c"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
