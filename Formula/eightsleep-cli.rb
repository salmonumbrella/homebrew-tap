class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.4/eightsleep-cli_0.2.4_darwin_arm64.tar.gz"
      sha256 "4aaa80ce62e053c1a12a4548ebd9f4c0ccf18df2b9c550c002c6dd3d7a6d861d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.4/eightsleep-cli_0.2.4_darwin_amd64.tar.gz"
      sha256 "779e89f7b8f51fc7ff1f4347c08a14161773222d763f03fd1651774a5b0e66c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.4/eightsleep-cli_0.2.4_linux_arm64.tar.gz"
      sha256 "d1e5c1215c8489cb5e4f5c0f90dd5f155f8bda0da95e2d7b98e6a0d6e73bbc8b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.4/eightsleep-cli_0.2.4_linux_amd64.tar.gz"
      sha256 "ad1758f9c60a1a9fd5134b6c465d0d91e683c6d217d6baea7377239fcb31f7e9"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
