class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.2/eightsleep-cli_0.2.2_darwin_arm64.tar.gz"
      sha256 "b8ce9abe2690f5fc33acbb2a70b54d7f78034446c8f970706ecdea3bc02abc5f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.2/eightsleep-cli_0.2.2_darwin_amd64.tar.gz"
      sha256 "f3f60dd1e5b55a239b7953189637fa7b6f7fcffad1f8e451691e336199c0a2ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.2/eightsleep-cli_0.2.2_linux_arm64.tar.gz"
      sha256 "256fcba064cc469f5df88aa08db846eb1974acf6fcf8f22b905b0501e4bd12af"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.2/eightsleep-cli_0.2.2_linux_amd64.tar.gz"
      sha256 "3921333b7bf53f5672aedbefd6b6e47046d707d53a2454971221eda06473e8c6"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
