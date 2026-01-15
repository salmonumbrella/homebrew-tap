class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.2/fastmail_0.2.2_darwin_arm64.tar.gz"
      sha256 "561141bd815bc5686ce845d0fd274527c4f521f35591a1111ba97a1ea334a5f3"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.2/fastmail_0.2.2_darwin_amd64.tar.gz"
      sha256 "bdcbab2bb2c82b5775ac74fb2d070bc2ee3cb66b7ef5d1edfed59bc0a326c77b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.2/fastmail_0.2.2_linux_arm64.tar.gz"
      sha256 "3808aa904a415d9f551bd0b20968a4966a58b748ca5d40486071c6d5a251fda9"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.2/fastmail_0.2.2_linux_amd64.tar.gz"
      sha256 "73b74a67470b18e2e8917aebfd5dd36c71746299acffbe3d4846641683fd280f"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
