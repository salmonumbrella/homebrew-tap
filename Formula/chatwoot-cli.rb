class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.2/chatwoot-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "7b9a2d5b0c193090da59e6f4f4f5edf5ecf0b7f110ea48a24e57ac2b95502699"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.2/chatwoot-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "381a394f6d91c3056482065d4eb89fb43460a0a1a283727f43fb338898967498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.2/chatwoot-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "1026339ac485d33758521619a2008fbe0e718fed12764a16183be24e938f8704"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.2/chatwoot-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "a27d14b28663ed3ab28c07fdcfac16a658d1a0150c5632de25a4c6a5b080745a"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
