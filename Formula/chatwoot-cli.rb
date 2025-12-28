class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.1/chatwoot-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "cbfba8b4971071b801cac7b3ff3b470b687f4bf31209f7e46a00017b93e8032e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.1/chatwoot-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "79e7c1fc144313bd1c7a48f28aa220607ccee3ec07a68765c09ced3f5a0e60c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.1/chatwoot-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "37ace93771a76e1a5611b02eda517095fcb9bb3d0acb86c4b63e99f9c7178964"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.1/chatwoot-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "6adb4834e043db62ac6fbbe365c28a6e509409543ae488f35005ac13c4f068de"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
