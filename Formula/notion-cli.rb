class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.2/notion_darwin_amd64.tar.gz"
      sha256 "8b9546cafb8656c1cd361873e46c2fdb5ab671bc0fd341b66416fcd7e2a0d139"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.2/notion_darwin_arm64.tar.gz"
      sha256 "fd8ac80391e648feaf6ec8a1b1425f553dbdfd7f62845f7bf7475d2e3e1eb869"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.2/notion_linux_amd64.tar.gz"
      sha256 "c24912094fd485574cce56a4c364e1764063d924062eff573b52ff6e20ae6435"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.2/notion_linux_arm64.tar.gz"
      sha256 "601563e2f0b86847ddc2aec16d6507649b3f98a7ae8de0b76031d8490868c89d"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
