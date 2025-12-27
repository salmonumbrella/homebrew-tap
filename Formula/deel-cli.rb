class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_darwin_arm64.tar.gz"
      sha256 "263f74b35f346751bb3e551be980e47d72166895b06ae35ab3daa18f36d006fd"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_darwin_amd64.tar.gz"
      sha256 "99db278836d52e250ce6a858f6ea9ff6d324a8de58ad02bb4088b00bc52aa312"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_linux_arm64.tar.gz"
      sha256 "21323b48f0c7dc259e3b536a0670d3e29077c7ea6374cc7b220cc130a1ff241d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_linux_amd64.tar.gz"
      sha256 "2a82d8c93ccbb9911b9d06f4be48b3391609175f5f769fd7e90bc3257aa8a444"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    assert_match "deel", shell_output("#{bin}/deel --help")
  end
end
