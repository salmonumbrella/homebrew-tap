class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.4/notion_0.4.4_darwin_arm64.tar.gz"
      sha256 "12c7dc76c514fc407f9e7c6b6501ff2d972f4e1d610b2c67ad7e057046bcb7cf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.4/notion_0.4.4_darwin_amd64.tar.gz"
      sha256 "bb879c5221aee44fe4efa55e44a072dcfc3abdd39aef3aefa51ec0cd41cbb960"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.4/notion_0.4.4_linux_arm64.tar.gz"
      sha256 "42d0d89eaa51101c19210642102e45d9eb4775527d7b6af781142b8febd44a72"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.4/notion_0.4.4_linux_amd64.tar.gz"
      sha256 "9caf753540907987a2bc05ea7590cdf3bfcc4875da59b72bb455df1b1c984be9"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
