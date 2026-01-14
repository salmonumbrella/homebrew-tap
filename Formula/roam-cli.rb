class RoamCli < Formula
  desc "CLI for Roam Research to manage pages, blocks, and daily notes"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.5/roam-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "bba40800b6d77cacbfef17bb380027f24b843640a9ef03fdc11819f45b315054"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.5/roam-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "d693a33d362f7dbc7d1ed644683964774f37b8b06b80f9e36288dda3de57f55b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.5/roam-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "532a55c301c5447e3db4f375e8421d247cd2766e643ddabad006b3d9ef11a31c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.5/roam-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "f3c12fc3d80f207eac915f3529e2d792cd254937f16f6d6923d2f8eab83ed3b8"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--help"
  end
end
