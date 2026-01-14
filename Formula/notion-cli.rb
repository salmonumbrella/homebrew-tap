class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.1/notion_darwin_amd64.tar.gz"
      sha256 "1fd9ed97e1daeced4a2d9c5fea50ccc3abe7271e216ffacf1ad67982f72e8d8d"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.1/notion_darwin_arm64.tar.gz"
      sha256 "0188b4a72e5e7baaacced2e20797fc830d51654b5d90e88513d773f3e754592f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.1/notion_linux_amd64.tar.gz"
      sha256 "2c4580688accee1257c24a1dffc0ee68f2c2b1536ab28cc6c47de260fed7363d"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.1/notion_linux_arm64.tar.gz"
      sha256 "6bf46fde7f2bf2f5c39771fb2c2cdf2a01682152a16bc98cc4a8bcc04e2c6165"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
