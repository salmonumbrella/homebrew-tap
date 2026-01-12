class RoamCli < Formula
  desc "CLI for Roam Research to manage pages, blocks, and daily notes"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.4/roam-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "25a22b0dd48a42a099d47f93c9acb52c8ab43f5da981d4d47a2d0cf61f38f6ff"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.4/roam-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "c4dc12b28de5188a5d39e9a2c0df517bfddb969fe8b484b418d0a8cbfe31f288"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.4/roam-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "dfe9b2ae0290274f98b6e1a3b2b1dd8be73894a4da5252e411250b8afe207a97"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.4/roam-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "ca19a78e84d03303668c7d0a64fe23046df11204828ae41a1d64acf4aebc2c6f"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--help"
  end
end
