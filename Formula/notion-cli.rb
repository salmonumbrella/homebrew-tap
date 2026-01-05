class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.4/notion_darwin_amd64.tar.gz"
      sha256 "285f517fd1be39572293b34a11b038a1876b00a4930a4ecd815b321162efb0b6"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.4/notion_darwin_arm64.tar.gz"
      sha256 "34398717e052a2686e676dacb3e08c48d4f7ee36e25414c3171087e66d42244e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.4/notion_linux_amd64.tar.gz"
      sha256 "408d48a445bac61b17fbc0ac51896c0369e2aadc8f452754d6cba2bdee25e752"
    end
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.3.4/notion_linux_arm64.tar.gz"
      sha256 "a4623971d4804841203baaa9ab86d25e065ab48733610d7d4090a5f235ee8eef"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
