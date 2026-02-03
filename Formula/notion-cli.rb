class NotionCli < Formula
  desc "CLI for Notion API"
  homepage "https://github.com/salmonumbrella/notion-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.0/notion_darwin_arm64.tar.gz"
      sha256 "e0ef8c97b41c5a5f07ccbaf46c450f6e49284bfd2b128e77a7332c5ea6c90909"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.0/notion_darwin_amd64.tar.gz"
      sha256 "a1589eadfb95ec90cdb52bdb59c58feb5d2cf95b80c86220fa0e4d96c4a8a6dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.0/notion_linux_arm64.tar.gz"
      sha256 "213a3709ca333072a9305ddf5c97bbfd9b0077cc4f7a98055e1998e2817d6641"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notion-cli/releases/download/v0.5.0/notion_linux_amd64.tar.gz"
      sha256 "a8e10502bdafca49822a938d765163c42d22d29cc74434c8a4ceffd39dafef88"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    system "#{bin}/notion", "--help"
  end
end
