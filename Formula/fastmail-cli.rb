class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.3/fastmail_0.1.3_darwin_arm64.tar.gz"
      sha256 "eb17be808bec054f8a3edf2a06f11ec297c8d9a93ffe97795591f78b26f1d5b6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.3/fastmail_0.1.3_darwin_amd64.tar.gz"
      sha256 "dd8dbd88d740861d5d0937eeac0ac15d6bbe4bdc7f698d7c9f35b94592c9a74e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.3/fastmail_0.1.3_linux_arm64.tar.gz"
      sha256 "485436c8736eef1a99e986f136d21e2f695ca8b4c299394e8ecd57b941d60490"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.3/fastmail_0.1.3_linux_amd64.tar.gz"
      sha256 "8f9649519c8ec77f2f7fa62707b215fb0c3923c73c981f17b454abb5e52a7a6d"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
