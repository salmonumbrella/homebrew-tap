class BeeperCli < Formula
  desc "Beeper CLI"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.2.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.15/beeper-cli_0.2.15_darwin_arm64.tar.gz"
      sha256 "c0b9df39e02707f35ee7de94f0f3b5b94edb104317c42904b048edf53adff996"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.15/beeper-cli_0.2.15_darwin_amd64.tar.gz"
      sha256 "930bb4b4c606a71c4225a8ca3aef23308ed77683b9830b142b842179e1b4ea6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.15/beeper-cli_0.2.15_linux_arm64.tar.gz"
      sha256 "dae9cd55942dfc4739c51115736652e1f3e03763013e8db10a32e95edc61b914
84145ebf2c84a75ba4391302fcdc86747f80cc8f7a89a1b609b16b2548230909
78b7afb207fc91a58e1d857ed25e5992b7e1cdb8d423b405b29bed2b76f5e8d9
56062d11cee9a7cf34b919948f7158287715a3f7051f20bbd05cc75a640d6bbf
78b7fcac8c5aff7437cd34cc2b6837d398db86ef20e52676581a2a0bac40ebf9"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.2.15/beeper-cli_0.2.15_linux_amd64.tar.gz"
      sha256 "4cd15dafa1eaf422194d52882cdad591bdc9542b3a2ea585365af4328661076f
71e46909ddbf9efefdc99d427fda31df44a2f3b16479f97154c1cba0d45de63c
981d1e5f500ede7a1e2503b7074554e4fceae3a4317f686b1bdfdd57bb3d989a
27a68fa681439c91f7f082f641adbca52b880a4c50c5cb5d3fdc7831b871dd36
c60f1a1b33f9dd4a9675b1c600bcd6c8fcd63ea4621d505a0c750013949e22d1"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    system "#{bin}/beeper", "--help"
  end
end
