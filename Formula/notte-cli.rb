class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.2/notte-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "1b7e8ddf00067284cf82be8f93e5a70c5de81c570d928dd3edf7239757527737"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.2/notte-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "b97520eb4e32733503f99a0333317696ce5aab9d3b30a1a5aa71e9ef59fa45e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.2/notte-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "53fad2cdc0fa5ee8f65ed0d99909c261a69840f3464a21022df90367cfa10672"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.2/notte-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "0e913afea60b866002c5fe24874e7b6674239811feac6a8eeb8f9052faee321c"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
