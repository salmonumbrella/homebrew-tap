class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.1/chatwoot-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "19a46ea2ddbfabf6f31b372c7698c291717bcbd93802d592800cf26e6daa4dbf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.1/chatwoot-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "ef74062d2f1c93003af8e17522ad272546c4757523a2df891ea76f8291a58e3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.1/chatwoot-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "fcb67324eb7a5780517b8c39e200e89dfc763d59854e64b4a13bc4679fedfd25"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.1/chatwoot-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "36d26327b2c18e2bf1837351f0314cf5ed538e2406e9b6e996d4a9e480acc188"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
