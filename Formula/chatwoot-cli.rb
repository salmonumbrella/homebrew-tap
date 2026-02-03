class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.8/chatwoot-cli_0.2.8_darwin_arm64.tar.gz"
      sha256 "c60672103fc7168a16a2fb141d7b92c0dcd73bceb87e38c2abc842f34598d358"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.8/chatwoot-cli_0.2.8_darwin_amd64.tar.gz"
      sha256 "38fde44e70bb483cf55f98ae9ae4ccc8f4c17e26bc2b8721f7bfa57fe5034b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.8/chatwoot-cli_0.2.8_linux_arm64.tar.gz"
      sha256 "b9302681f4e3ff25ae8a0a49e956f69a4f9896db3bbbc28d30add76711bfa95b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.8/chatwoot-cli_0.2.8_linux_amd64.tar.gz"
      sha256 "ede379a40adde2764a9eba05342be24c504094f614c2d9dae12e45e3e50a5f2c"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
