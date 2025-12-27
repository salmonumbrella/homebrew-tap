class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.1/fastmail_0.1.1_darwin_arm64.tar.gz"
      sha256 "0c2244aad453cc9f69beab937318a1239d321cbc05c800e137043a4c6bb75f03"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.1/fastmail_0.1.1_darwin_amd64.tar.gz"
      sha256 "0e5dde0ddaa9e63ca9721ab5672d4882898481f21b0e734b3f4b5926c02b5b85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.1/fastmail_0.1.1_linux_arm64.tar.gz"
      sha256 "ef2a74cc96f691493deb86d7a35a661b6ef5dafb038d573e3b60ed735df8f2e5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.1/fastmail_0.1.1_linux_amd64.tar.gz"
      sha256 "0084628263b913b11abf7c62bf47abccceb8daaf053fdccb93eabc6ec5139e77"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
