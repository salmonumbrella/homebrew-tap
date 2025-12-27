class NotionCli < Formula
  desc "CLI for Notion"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_darwin_arm64.tar.gz"
      sha256 "89eec0a7ac8336ee19fc00b41bf31830995262ea2f81cb9272b005ea0f5ff3d0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_darwin_amd64.tar.gz"
      sha256 "d46f1a7821d1fccc0d2034a682d8f5811e26d52a30658902ec2cffc0decdac2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_linux_arm64.tar.gz"
      sha256 "cf02087a01c63f916f16d8d7d739f28c1133291028e6ee99600504765acb8f63"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.4.0/notion_linux_amd64.tar.gz"
      sha256 "67cfda626f0c923f7ebc08c42a9f71ed80297f3b98e5599c00d4c1c154b212ab"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion", shell_output("#{bin}/notion --help")
  end
end
