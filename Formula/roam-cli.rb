class RoamCli < Formula
  desc "Command-line interface for Roam Research"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.1/roam-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "c480e60fe1ec1326f983203b1db7b815aad1f9a55ca098a24a0db12700bf7045"
    end
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.1/roam-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "7b4f8c379f704e0f309cd5a605d372080d32687f7db7d977225293e6765a7bb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.1/roam-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "7df720d502933789d6cff9a54e2c7ffeeb09b287ddd63f855a6a4c7774252e53"
    end
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.1/roam-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "f0aec5df38214b775ee3a9751f8fd43a7bb5d573eb3f7f071021fe98f6036da8"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--version"
  end
end
