class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.4/beeper-cli_0.2.4_darwin_arm64.tar.gz"
      sha256 "2f3a6049f49e64108fdb474f33ddd3cc29e7045587265c10fa487a5bdb6d9033"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.4/beeper-cli_0.2.4_darwin_amd64.tar.gz"
      sha256 "d0fe64a5042750054787f9b37f58a87c1de4f9782f68c93f6838a6a4bcae371f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.4/beeper-cli_0.2.4_linux_arm64.tar.gz"
      sha256 "7c9501c7e706501d7e57ceca8617dd548dd16f7baf132e6cee3f5868fdce19cc"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.4/beeper-cli_0.2.4_linux_amd64.tar.gz"
      sha256 "be4de4a5df09f779986208c6367e22e92f4ce014b70673e35d5247d426b85b7b"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
