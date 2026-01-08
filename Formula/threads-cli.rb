class ThreadsCli < Formula
  desc "CLI for Threads API by Meta - manage posts, replies, insights"
  homepage "https://github.com/salmonumbrella/threads-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.0/threads_1.4.0_darwin_arm64.tar.gz"
      sha256 "aabe2dab8146a88978cee99e87a0d2b92ba173f0bb0d3822a1f558092f1c0a30"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.0/threads_1.4.0_darwin_amd64.tar.gz"
      sha256 "fad50407ee6bcd7cc3aaf70648319db4acd8d1d6efc81463fd421468bc9b48f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.0/threads_1.4.0_linux_arm64.tar.gz"
      sha256 "6a76abba39fd30d0b86b2750c9ba30d372c63671ee2d488c4d8a5c29219706ef"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.0/threads_1.4.0_linux_amd64.tar.gz"
      sha256 "f6e1392cf53690c27ccc75fc421a9960fc461860ec864355a53b75d91c909120"
    end
  end

  def install
    bin.install "threads"
  end

  test do
    system "#{bin}/threads", "--help"
  end
end
