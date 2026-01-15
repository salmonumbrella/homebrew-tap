class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.2/chatwoot-cli_0.2.2_darwin_arm64.tar.gz"
      sha256 "167d4c83ad586ff8dd98ebf58542ef3c2d4f28b239cd278f66737a60dfef1503"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.2/chatwoot-cli_0.2.2_darwin_amd64.tar.gz"
      sha256 "b46ef91e68ae3eb38849dbb634e8bd436815b16aaa945ecce53a50e06ca82938"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.2/chatwoot-cli_0.2.2_linux_arm64.tar.gz"
      sha256 "451c0885e3032389fc3b47685436cc32f7850ad0d0783b5f0dfd54b65c83c6de"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.2/chatwoot-cli_0.2.2_linux_amd64.tar.gz"
      sha256 "9e34f3d7bc2eb3a263408a9db075e6a6b87991dac55c070915effe33da39c0d7"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
