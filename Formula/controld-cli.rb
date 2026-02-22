class ControldCli < Formula
  desc "CLI for ControlD DNS management API"
  homepage "https://github.com/salmonumbrella/controld-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "ee7870142aa6f3b1c0604528fe50db6e3ad3682db1a3ba89bc811eff7f57c499"
    end
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "7ab39cc81d0bf3cbda71fa6ebd42127ae5379f2ba26530442569dc84b90968f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "b285cdd00957cb9c8d1859e38d1d71ba9c842d57be71fe4eebb9ad0c1b4eb321"
    end
    on_intel do
      url "https://github.com/salmonumbrella/controld-cli/releases/download/v0.1.2/controld-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "8c737908dee82202b4a6df442ad5895b274395437a04c9cff7ca6112fda253e8"
    end
  end

  def install
    bin.install "controld"
  end

  test do
    system "#{bin}/controld", "--help"
  end
end
