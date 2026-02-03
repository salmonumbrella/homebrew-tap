class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.1/notion_0.5.1_darwin_arm64.tar.gz"
      sha256 "3eae83f21d648c6247f96b5b88a2e05c687a836dc6ba43ff4756bbad4bee3fdf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.1/notion_0.5.1_darwin_amd64.tar.gz"
      sha256 "bd6f827fbdecac528742711a120541771f9a19c942d10c5a64651ac0bb2d32d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.1/notion_0.5.1_linux_arm64.tar.gz"
      sha256 "6d67de98a791d947dc9848e86089a9cb41d2a7447e6c1023853f58f1549578e0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.1/notion_0.5.1_linux_amd64.tar.gz"
      sha256 "a62f37785458db9c9ee9dc8ad49b20c132ca451e026177bfc86d850f3149d760"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
