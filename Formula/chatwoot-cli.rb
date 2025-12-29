class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.3/chatwoot-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "f13291e346f71fe50c94805f46f41c40e1d5e9b6ad50363675be027c88209f1a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.3/chatwoot-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "5f40c2ba8359a838f6daf3b008f3c33fa12e84155a4d29f843fee6465dc440d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.3/chatwoot-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "befa70ea33f616b9dd1070226e00a85068919526c4c3607f7364e277517c6ff1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.3/chatwoot-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "8e954615ee1ce5bda829fc066094604c211e0a786d6ef1a9a93365f0b013be50"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
