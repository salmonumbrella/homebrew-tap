class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.3.0/chatwoot-cli_0.3.0_darwin_arm64.tar.gz"
      sha256 "a31d2f6a06cf712ef56bdf0a43cb37deeed13ddd4f587868612cf16c86794867"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.3.0/chatwoot-cli_0.3.0_darwin_amd64.tar.gz"
      sha256 "3ffa737f703d094679a3c7cc45cf0c73c0c9f3251f1d5811482165bffce21570"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.3.0/chatwoot-cli_0.3.0_linux_arm64.tar.gz"
      sha256 "540830ef23d121b6177cac3061333eab418ce8c1187be590d9a3fef9093f3862"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.3.0/chatwoot-cli_0.3.0_linux_amd64.tar.gz"
      sha256 "ae3f831b89745251854d1343e15aace64ee1233e601f5056a62e4e735bbb1869"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
