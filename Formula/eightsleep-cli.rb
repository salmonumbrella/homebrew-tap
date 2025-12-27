class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.0/eightsleep-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "e8bb5ee4443c45efb51e06c1444c4b9f7a1b1bf65086b8da45dfcd8d63d6839a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.0/eightsleep-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "8e8e563559e1e8adbca4944aedccccef6056ba16032480449ee96ee7bd0bfe29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.0/eightsleep-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "f71545c0227070f54764b1b20c9bafaaee5e811d89ee10cf6b63e61e159bf153"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.0/eightsleep-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "3c0399782964d49361dbc7101f8105a2a055ad8be40036dff4e45a13515fd10f"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
