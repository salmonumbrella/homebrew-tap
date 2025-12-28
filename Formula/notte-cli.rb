class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.1/notte-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "530a7951c1adad871189a34426d2d3fee01dc63694d5da20976906fc168fd9d9"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.1/notte-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "4d58dab2b97f85113b24e4058542470d4f50a70a70bdfc11cb4950b29713b99f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.1/notte-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "91afb85228e0d6eeacff9f929abf6efa638de2ff3cec7b4063a7b5a10473e742"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.1/notte-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "56509e9ab06fb143fd04439db2802982773e30e51aeddf9e0ba0079abfa05744"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
