class NotionCli < Formula
  desc "CLI for Notion to manage pages, databases, and blocks"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.2/notion_darwin_arm64.tar.gz"
      sha256 "603be934fbc7004712f05ce77818454f95a44c43de8c9a0bfa9782482f32613c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.2/notion_darwin_amd64.tar.gz"
      sha256 "8ff32cb0501ea5970086bc65846b461bbde29199a629f8adb1dfca3befa743c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.2/notion_linux_arm64.tar.gz"
      sha256 "0ad3162141433ec30b28c8567b3f0305b26f5f363470203bb9200fdda15c62ff"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.1.2/notion_linux_amd64.tar.gz"
      sha256 "d2107414253aaf05e8c0cf02355525584e1191e054254355a99bf67e389a015f"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
