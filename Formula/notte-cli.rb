class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "1583e1addecb9d16809ad76fa81105e7f8f2591b3e40ea0533e6f4bb125e342c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "ca129daf0e655901a29fbb0dc87c10646955d7b1f8905639125e40e3522136d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "9d6a7da23fcfa7bedc160b3db327d0a3b9bc6c916467ffe523924f4c40cdb85b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.0/notte-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "4b7af36e304cdeeecf37311361cc675e0ef991f2a39dfce9c3db82cc0d9e2920"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    assert_match "notte", shell_output("#{bin}/notte --help")
  end
end
