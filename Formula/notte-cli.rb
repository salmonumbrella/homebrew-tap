class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.5/notte-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "b8edd97c2056d04796d3548fa94792b4b469fd380331c7bf597b85b8bafae6de"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.5/notte-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "48cc26b42c9b0359ba2f52d1095064d7737a7ee9ff92fa2eaf2ae89a6855d67a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.5/notte-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "4d5fbdc615c73f969618c4b39a3189268b6a53a6ecde50d319885a9f865301dd"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.5/notte-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "998967e2f9505977c294e38a1d4c33acc36515406a8c69e2e591e036a2c8aa49"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
