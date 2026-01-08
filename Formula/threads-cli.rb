class ThreadsCli < Formula
  desc "CLI for Threads API by Meta - manage posts, replies, insights"
  homepage "https://github.com/salmonumbrella/threads-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v0.1.0/threads-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v0.1.0/threads-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v0.1.0/threads-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v0.1.0/threads-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "threads"
  end

  test do
    system "#{bin}/threads", "--help"
  end
end
