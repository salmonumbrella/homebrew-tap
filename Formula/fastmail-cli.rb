class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.0/fastmail_0.2.0_darwin_arm64.tar.gz"
      sha256 "47670e0503b30ebdcd32f02303f7be3e7b19ecb6d9d40dc9e5e348710b12646e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.0/fastmail_0.2.0_darwin_amd64.tar.gz"
      sha256 "55e409fcf6d40f40747f1001f082e73dd72b535a91ffb0e9cbccd5f25a3160ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.0/fastmail_0.2.0_linux_arm64.tar.gz"
      sha256 "f848e80710199fc7df36dc71d5795c80279887230710c06b3e525c84225fc128"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.0/fastmail_0.2.0_linux_amd64.tar.gz"
      sha256 "30673707aef6bd50398096a7f379271c3206544de038f6ee48a2acbbf2f8ef47"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
