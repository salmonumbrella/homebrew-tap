class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.5/chatwoot-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "9c44778f49843c06d25705d61e8c8e3d3b9422afc081df5f6ac29b43ecc37c22"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.5/chatwoot-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "d89233489174fbcdc8c676f13012aea4f5b6ade036a11a494f17aa9f24d1ac07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.5/chatwoot-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "093aa170e7a6ecdc321c6e17d2c54aacb61f3f11d98b23ee2f5ceccc69bbd2a6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.5/chatwoot-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "debf813e1716ff105a8434ad39f26814e185815f5d13a28553ebae7bb90835f8"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
