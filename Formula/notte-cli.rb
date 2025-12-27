class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "eccd9b31a7f3c9b5414e5ad08efb6ff7acc9da6b2c792b0fa1ea50ec3fe9202d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "ac89c92d3645d45b429d82c03b23c32896e1f9b05cc2d5ba0e27b420b64af59e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "70949a2166c8840b9409af525c45b774db4038a4d6c6d1635f8a7e5910c92ba5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "92f7c42c6e7b652b7cb31e396165d1c09b0d896dc6dd9d222c7cd187e8680c73"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
