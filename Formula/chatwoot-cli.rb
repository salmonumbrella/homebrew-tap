class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.0/chatwoot-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "6c2603d3e062edb70983a692657ac6a3d61be33f9ea280a58eac7cb4cbef8714"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.0/chatwoot-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "0eba787aad27fc8e92e1d0c32e1c75316f976ee9240770e5ef87a67936ec38af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.0/chatwoot-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "b23cc1755ec04d6481613003d23ae0baff392516d68b6039266049136e07b7bc"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.0/chatwoot-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "df7f6690e0e54b399db1dc1c54582aaf0443d0aaf02aef61e66f36fe1fa33484"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
