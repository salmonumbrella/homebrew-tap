class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.4/fastmail_0.2.4_darwin_arm64.tar.gz"
      sha256 "c6f01d0eb99f612563edc32a954ee38a732de525c39ad00560a3b801c12de3a1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.4/fastmail_0.2.4_darwin_amd64.tar.gz"
      sha256 "844c8a157d88419a88c41b3c2051b9b5503bc15bf91efc613a396ffdcfc1b58e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.4/fastmail_0.2.4_linux_arm64.tar.gz"
      sha256 "ddafce61ecf4e0dde8381d857be8ae1bae24e2d81c40b0526917f246baecdbea"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.4/fastmail_0.2.4_linux_amd64.tar.gz"
      sha256 "ef91c13d1a490b2aebe8eb02a8e0d327677fc16a3c6d528e1a6e0b4fd973b620"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
