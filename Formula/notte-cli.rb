class NotteCli < Formula
  desc "CLI for Notte to automate browsers, extract data, and run tasks"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.4/notte-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "52a89b02466164732b6e9ea471bdb2d466aac8c921376151ca5bb2b6f33d624e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.4/notte-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "3eda81694c6b047cdaff3e70713847c58446b20e49cd6365345d530269461c1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.4/notte-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "c15d010b171b1bc0e965edc9a81116c82fdbcb18591662b5552a3d8e11bd3264"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.4/notte-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "7e93e0efc97f431045b65f8c798d5213d5870b4118c46564b9acb055e9883c83"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
