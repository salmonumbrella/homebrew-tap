class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.0/chatwoot-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "8d0c8f0b01fec0609ef1476309f7b51264f10527bebba65f2cbca4a788a02180"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.0/chatwoot-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "5ecb816558c6a59d3106f32b3d0fd513dab941b3f9931179522911eff3ecb506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.0/chatwoot-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "a74148f472e17440e677763a9417edda83d1754f29b856231bf1c02ee797ff76"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.0/chatwoot-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "d3894147451ff69fd5d2e4ebf6c7780c2f66eb8f01178691440b43e3f1577811"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
