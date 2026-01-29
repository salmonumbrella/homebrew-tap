class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_darwin_arm64.tar.gz"
      sha256 "96691e9eb3485d107be2c547273f3cab2582a9c7174c0bd35309d8cb03e5db90"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_darwin_amd64.tar.gz"
      sha256 "9624d7d03df570a9883ad90efc6e3d32cf768086e42415a2d8df9ea76b5d4ecb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_linux_arm64.tar.gz"
      sha256 "a20184943c6f26f71b0c4920b6f31a457bc21b533f55fb3ca729a5bb6014077b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_linux_amd64.tar.gz"
      sha256 "13e6414bfcb87eafc6382e55530aef31c0e28215726ffc3e58096252192005f2"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
