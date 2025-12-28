class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.1/eightsleep-cli_0.2.1_darwin_arm64.tar.gz"
      sha256 "2a6879e3ef9e13766058739c354da017d7313b0470e2bfd4f88c21a823813c56"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.1/eightsleep-cli_0.2.1_darwin_amd64.tar.gz"
      sha256 "54bdfd493b7c0f3dd1208274f01a61ba2b550c2a00c8b04b04c1ba7254998729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.1/eightsleep-cli_0.2.1_linux_arm64.tar.gz"
      sha256 "6ba30e186254d0897a83771c755eb1516db7d0b7e919fbd732d22e4c90efc022"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.1/eightsleep-cli_0.2.1_linux_amd64.tar.gz"
      sha256 "aa857e5239d68b077738ca2cc75de2832957ee744240221a9e55f894f8920a99"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
