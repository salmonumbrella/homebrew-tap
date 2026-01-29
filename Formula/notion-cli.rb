class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.3/notion_0.4.3_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.3/notion_0.4.3_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.3/notion_0.4.3_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.3/notion_0.4.3_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
