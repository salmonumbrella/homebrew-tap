class RoamCli < Formula
  desc "CLI for Roam Research to manage pages, blocks, and daily notes"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.3/roam-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "12612c9ef09dad9ffeb42a62c46a5f8926e4cc06db9597e2d33cb03e3aa1d590"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.3/roam-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "caa73063eb69627aacd1f46ed0a056b2b98331928d43a859a2eca60b53b70a65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.3/roam-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "112d3bb67579ca4827dc855733c61fb5645863e7ceccf65b7e88228a9f38ade8"
    end
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.3/roam-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "e5cbaa20a1b80f4ac057f7b7ca75860a669d56f91c13ba808b0927798e606316"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--help"
  end
end
