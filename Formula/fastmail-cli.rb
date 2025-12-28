class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.2/fastmail_0.1.2_darwin_arm64.tar.gz"
      sha256 "3cc1b761cbd9523179c7d424578267f79b11f56951bd804521c17db93f990dbe"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.2/fastmail_0.1.2_darwin_amd64.tar.gz"
      sha256 "162719aa6f1bce4ef5895786645ba018b87b58deaa8d83d7cd0b8a11792cebf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.2/fastmail_0.1.2_linux_arm64.tar.gz"
      sha256 "2c24994a928294e9ebb191c57400ad5fc4292697e8dfa7a05e0a43ed1b11bca2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.2/fastmail_0.1.2_linux_amd64.tar.gz"
      sha256 "f069c4665e39817784b92b1600a7f5ea441370caa8029b15c123cf45dd69c197"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
