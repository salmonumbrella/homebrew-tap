class UthreadsUcli < Formula
  desc "Go CLI for Meta Threads API"
  homepage "https://github.com/salmonumbrella/threads-cli"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.6/threads_1.4.6_darwin_arm64.tar.gz"
      sha256 "e2ae8a8ae00678a76cbb67903af1d51781282a8bd0708e7cd52776bcedfc0612"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.6/threads_1.4.6_darwin_amd64.tar.gz"
      sha256 "1280729f51a2d043ea35e9f24b891f26dbdd885dae243ac6f768e05a4a287dc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.6/threads_1.4.6_linux_arm64.tar.gz"
      sha256 "1a17d2cbab34e2c5afe0c186a71366beaab7e0f0f86d3cf927b944e1d3a4c1fd"
    end
    on_intel do
      url "https://github.com/salmonumbrella/threads-cli/releases/download/v1.4.6/threads_1.4.6_linux_amd64.tar.gz"
      sha256 "2cf9dc25316dd9dd51f828852445f565e2ef54119d8648bceb96d720c1c759c6"
    end
  end

  def install
    bin.install "threads"
  end

  test do
    system "#{bin}/threads", "--help"
  end
end
