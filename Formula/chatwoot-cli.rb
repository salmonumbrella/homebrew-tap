class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.6/chatwoot-cli_0.2.6_darwin_arm64.tar.gz"
      sha256 "ffabe68b0bdb7a2baf57cf1711666abe927ce6546379ec8f9f9569b13fcd2e43"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.6/chatwoot-cli_0.2.6_darwin_amd64.tar.gz"
      sha256 "947647a80d5d84a22187ceb6fbce4d9916d2fd6dd025d5a7933efa58004bf61f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.6/chatwoot-cli_0.2.6_linux_arm64.tar.gz"
      sha256 "b8575dda01926606152bc08f8cf2858c5c69839413a62053bdca7da29319603d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.6/chatwoot-cli_0.2.6_linux_amd64.tar.gz"
      sha256 "df725c51963de11f9d3434722ff8de7a46cfdee0228c53d51d348e4b5966e800"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
