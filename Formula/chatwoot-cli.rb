class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.6/chatwoot-cli_0.1.6_darwin_arm64.tar.gz"
      sha256 "74fee8ff188e58bc4c078ea0442ba62943ddf0653ea978318df5255dfcb370c0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.6/chatwoot-cli_0.1.6_darwin_amd64.tar.gz"
      sha256 "f88a0c46859b9c913c4edf42d9cfa963d55bb0f8601e29bedaf0b376c26d2ea3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.6/chatwoot-cli_0.1.6_linux_arm64.tar.gz"
      sha256 "cd3d66d942201ac43d20356fd0d3dd7d63163030e475bf4b9a4edbeb819ee351"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.6/chatwoot-cli_0.1.6_linux_amd64.tar.gz"
      sha256 "53f872c7298db7e8fe5ee8a0a5788e31641a4902112b1ee5d6610bea5122f652"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
