class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.5/notion_darwin_amd64.tar.gz"
      sha256 "02654790ef1b5fe2ae6f34ad23b24148f0484ec8b411a75072f22189661f6976"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.5/notion_darwin_arm64.tar.gz"
      sha256 "76161060d1ebbbdaa6f17a522f1cbe6d310abe16333111dc66402afc02047d04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.5/notion_linux_amd64.tar.gz"
      sha256 "1317a70aa4924c2301a1284ebf51c82685f782c32cc122c7f7d1b79b271b4d29"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.5/notion_linux_arm64.tar.gz"
      sha256 "e4648479a5803bffcf58f445717381da35fcade1b04d1dc6541355073891e2bf"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
