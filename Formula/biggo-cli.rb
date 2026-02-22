class UbiggoUcli < Formula
  desc "BigGo price comparison CLI"
  homepage "https://github.com/salmonumbrella/biggo-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.4/bgo_0.1.4_darwin_arm64.tar.gz"
      sha256 "6abd5bc49dacfee15377ee843c797195df5133bc039d6411fe8a866dc5aac2df"
    end
    on_intel do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.4/bgo_0.1.4_darwin_amd64.tar.gz"
      sha256 "23e93f61c0a1c6e1f3e7c5f39433145243329595ab40dcec948e79ad60f63451"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.4/bgo_0.1.4_linux_arm64.tar.gz"
      sha256 "39da91d8232a0a6b8d835cd9de1e62d53b5b299a56f2d0cdab17d2c5f1810371"
    end
    on_intel do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.4/bgo_0.1.4_linux_amd64.tar.gz"
      sha256 "57d209ae25b8ee456ad1ddceaef0590f0f0d4bc78e46abf7b2e58b42b9922aa4"
    end
  end

  def install
    bin.install "bgo"
  end

  test do
    system "#{bin}/bgo", "--help"
  end
end
