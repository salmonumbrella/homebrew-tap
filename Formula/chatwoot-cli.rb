class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.7/chatwoot-cli_0.1.7_darwin_arm64.tar.gz"
      sha256 "d0161c02cfed2ab39fd60dccac53b7f879f92f56970756b4796ee1bdfca30e0b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.7/chatwoot-cli_0.1.7_darwin_amd64.tar.gz"
      sha256 "27cc0d3cb150aae97abc0f6a2ecc3b1b67041cb228c6a8e0da7a6df7340547e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.7/chatwoot-cli_0.1.7_linux_arm64.tar.gz"
      sha256 "36c1511ba388b202755480e7554ee492d62971155ce29424803f82fe39b7ba58"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.7/chatwoot-cli_0.1.7_linux_amd64.tar.gz"
      sha256 "4226ad9fa27c3e61fb36b57f4d544f88d0fcc96d42edf1cc893ce2a3dccf223d"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
