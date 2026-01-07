class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.6/notion_darwin_amd64.tar.gz"
      sha256 "82ee6d489d4e8d6bbfd10e3cf998ec96d68d4ab16cbc1748ca6f16ba2630ae84"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.6/notion_darwin_arm64.tar.gz"
      sha256 "c3afebee59dcda2d8a0b5a08b75eed500bd18d5f72fbaecb525fc805210a967b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.6/notion_linux_amd64.tar.gz"
      sha256 "af3e9d5da7a75454e2e4855e529256b4e680a21dc10bcac0b3e13fb22cf4ee5a"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.6/notion_linux_arm64.tar.gz"
      sha256 "1570da5c70469f03f00f599bd33a0611ebb685e4d6b292983ea8e74da71d52e2"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
