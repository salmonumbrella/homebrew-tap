class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.3/notte-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "9a5078944515dba0aa45c092b7ac80b27bc5b6dbfe2e50d55e28c26311345243"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.3/notte-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "059c7eb90dd3b390b45e73c986cec9de37ee380029e2438b38fe51ed407e81ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.3/notte-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "6f8219e2e3ea700ee4020b67185ed0e3e06f2ac610c0222eba36c2d81830caa5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.3/notte-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "5625741d946838cd0df8c725d309f20488154e23e2afae21024015c3153f5bca"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
