class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.5/fastmail_0.1.5_darwin_arm64.tar.gz"
      sha256 "227c4aa5b344b2ce41d871a3bfd91626f9885ac79a38531072e7d4ed4b2bea0a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.5/fastmail_0.1.5_darwin_amd64.tar.gz"
      sha256 "e7f9f0b4df5f270ef73f2b37466aaf39e2428e1a7d3819352727a414d1ea2e70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.5/fastmail_0.1.5_linux_arm64.tar.gz"
      sha256 "00ac911a8266b2895076ebb0b284c648d4b2f83abb7e60d6a46b090b80cf7b15"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.5/fastmail_0.1.5_linux_amd64.tar.gz"
      sha256 "7ba2b2c644e6eb095bd63d4e7ac2917f6b44419238deb7729690d5923e66ae88"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
