class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.9/chatwoot-cli_0.2.9_darwin_arm64.tar.gz"
      sha256 "d1f5f08ff5a365908795e76f0804218ca63e702426b576db0168e12203feb584"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.9/chatwoot-cli_0.2.9_darwin_amd64.tar.gz"
      sha256 "5d6d3f7cbde6f1a1297d4d5afb949f72b52f1be62322bdb477b751861163d8ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.9/chatwoot-cli_0.2.9_linux_arm64.tar.gz"
      sha256 "14868d47ead59a22fb23b4f46430a06d43ccfb4dde51d4730c83e6ca143fa928"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.9/chatwoot-cli_0.2.9_linux_amd64.tar.gz"
      sha256 "fae764e67f926409873c87d6ff3f51c9cbfd1bb2fc736db260c1074f66662b40"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
