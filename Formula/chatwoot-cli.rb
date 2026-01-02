class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.4/chatwoot-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "b249ac445c83d0753c32a8246e2331949f6b952a57dfc74b2596bd27e5b5529a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.4/chatwoot-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "bc396ddab39de796106316d2e306b71c592ed4b457e97814aabf2d939efbd339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.4/chatwoot-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "1c7be9f726670c5095cd151a7f0d41bfb7255bd92e5f5db49e8fd1a0535be58c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.4/chatwoot-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "eebde237e5c8038363ee58410ecc605e113137cfbd13d118d64535b584f33c6f"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
