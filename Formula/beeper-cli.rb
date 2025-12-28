class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.1/beeper-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "e01698b409d94e187b2fbb7a1c22c5af1d0d245439e5193078de2f6b169d52b7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.1/beeper-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "594f3a65ee3fafaabbe37bfeded590dee01ef30e421202e2db907fcedcd200d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.1/beeper-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "ac9ba86d8f085179d60dd4064a8461834e764a13af67ffceda65f4ae50a55cdf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.1/beeper-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "e4d645d8bc98995ed2e1e6cf775cb8e32812d01fd96283514a74279369558852"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
