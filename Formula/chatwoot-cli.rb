class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.3/chatwoot-cli_0.2.3_darwin_arm64.tar.gz"
      sha256 "a617f295a130648ab8e77ce273061c25b0bf6ed4cffb734e30a835f3964de3b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.3/chatwoot-cli_0.2.3_darwin_amd64.tar.gz"
      sha256 "cfbae9a7f02244a803cfc5145b98d3bd4c17f3b38c61dff633cb310e5ddfd1c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.3/chatwoot-cli_0.2.3_linux_arm64.tar.gz"
      sha256 "c0ed1a824a5bbf066e3eef4b0fa9641ed2705153c05ff161ba2e7e1ea1705986"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.3/chatwoot-cli_0.2.3_linux_amd64.tar.gz"
      sha256 "2961f76ef2b86a7e122e187b75eacfab78e5f6c54a55cdcc05a78de17cb2da44"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
