class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.9/chatwoot-cli_0.1.9_darwin_arm64.tar.gz"
      sha256 "3ada7f459e3f4dc361897b2fd8484ada6029f6efa13e80aa9c3fd4401af2c631"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.9/chatwoot-cli_0.1.9_darwin_amd64.tar.gz"
      sha256 "a4367af035b3ddcb5d93a4eb1d773fcf53b98af710a54f6a797cc29d09d63a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.9/chatwoot-cli_0.1.9_linux_arm64.tar.gz"
      sha256 "3193b5f2b00ef49db5da2bd112035a44805d34022e0324c0a8bf706b59fb6899"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.9/chatwoot-cli_0.1.9_linux_amd64.tar.gz"
      sha256 "69831c78968f53d0cacb362ab4dc4833be85faf70c0d10f424f4a3257fbc231f"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
