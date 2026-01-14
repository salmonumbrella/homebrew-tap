class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.5/eightsleep-cli_0.2.5_darwin_arm64.tar.gz"
      sha256 "711988d487137e2346c7c1ddd874f1968d6ce5c627932fd1a6ac6bfb743b1845"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.5/eightsleep-cli_0.2.5_darwin_amd64.tar.gz"
      sha256 "de700a115f339806199ee772128eb5c2e97d166b926f1526254bf47995e22d3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.5/eightsleep-cli_0.2.5_linux_arm64.tar.gz"
      sha256 "e24bde634a2e70ebac186f137e0b2be9638408c4f4e06515cf38108cc0ef3dc6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.5/eightsleep-cli_0.2.5_linux_amd64.tar.gz"
      sha256 "5cacfc47daa560bdac9c82915aa635b8548d505b19756de16901da75a904ad9e"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
