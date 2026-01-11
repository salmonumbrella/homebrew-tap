class RoamCli < Formula
  desc "CLI for Roam Research to manage pages, blocks, and daily notes"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.2/roam-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "e126a206c6e6d1d18256f34eb97ba0d9d53bac58ee585e96dd505614e5408534"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.2/roam-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "2986313d84de4a2c10e249170f7a2c1d00a7490f551e79249c1ae9e4feb50e43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.2/roam-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "13d3d4e42ef56011a84d25ebaa47c968d8365e86f852cf0a98455acd30c50e25"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.2/roam-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "c5b7b8cf7e87db19e934286be418522480ef78461b3cbb49d50497f014f59392"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--help"
  end
end
