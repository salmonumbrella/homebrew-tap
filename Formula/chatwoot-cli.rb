class ChatwootCli < Formula
  desc "Chatwoot CLI - Chatwoot in your terminal"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.40/chatwoot-cli_0.2.40_darwin_arm64.tar.gz"
      sha256 "180eb001e72c7bfce97b3524228bde578f6bceee50f199c2d6535bffd9b3fa76"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.40/chatwoot-cli_0.2.40_darwin_amd64.tar.gz"
      sha256 "70ba085d84d9a4e86b154cc5c94e2e696357ca04cda25573ac70a89d5e3a8e8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.40/chatwoot-cli_0.2.40_linux_arm64.tar.gz"
      sha256 "3253d265bfcda528a237bee08d26cae10bf8eec5925fd9758d6e49e8a5c13f08"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.40/chatwoot-cli_0.2.40_linux_amd64.tar.gz"
      sha256 "417582f0dea3ea3bfe2013c3bbc9ed52dbda291fc68d9abf28625804bfef1b85"
    end
  end

  def install
    bin.install "cw"
  end

  test do
    system "#{bin}/cw", "--help"
  end
end
