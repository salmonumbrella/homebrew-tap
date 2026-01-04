class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.2/deel_0.4.2_darwin_arm64.tar.gz"
      sha256 "5b8c80aa2d937e247918455c24d6757c5803f9acbf4af2597cd5f703a6a915a4"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.2/deel_0.4.2_darwin_amd64.tar.gz"
      sha256 "206deee91d024b3f9368c795269b8876abc835b32514699b114da42cdd3c1d06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.2/deel_0.4.2_linux_arm64.tar.gz"
      sha256 "60fcd0d5b89105b7e22256aeba5da847c58cbdf797a84eeb139aeaf8ed6c20db"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.2/deel_0.4.2_linux_amd64.tar.gz"
      sha256 "cb5a9ef50588497213b178028856b85ed020dcccc5961f16403ded314aeb1bd3"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
