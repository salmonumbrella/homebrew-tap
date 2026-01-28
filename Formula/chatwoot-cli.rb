class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.7/chatwoot-cli_0.2.7_darwin_arm64.tar.gz"
      sha256 "d723a0fb1b5a07b001fba86b9fd8bb3fa8234429f8e0ea26176567b6017bc441"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.7/chatwoot-cli_0.2.7_darwin_amd64.tar.gz"
      sha256 "3e696362cfb0419237f72965558a22d9561126da4ec176c0e38bee4cd60a3f4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.7/chatwoot-cli_0.2.7_linux_arm64.tar.gz"
      sha256 "95ab59a211070b40291868726c884adb905a312bd6c8e11521f951263e43ff83"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.7/chatwoot-cli_0.2.7_linux_amd64.tar.gz"
      sha256 "1b2f14fc1a556b0607c5b3f86eb253e959b73fd6b23cd1eee64bfb952ca996d3"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
