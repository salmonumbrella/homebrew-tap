class BiggoCli < Formula
  desc "BigGo price comparison CLI"
  homepage "https://github.com/salmonumbrella/biggo-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.5/bgo_0.1.5_darwin_arm64.tar.gz"
      sha256 "c3e5f231e3b7fd012499244733b2323bb54976f299834ba217bac40e1d8fb3ff"
    end
    on_intel do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.5/bgo_0.1.5_darwin_amd64.tar.gz"
      sha256 "13e9c07d216a5bbb0e95619898c10fc87a91ae5e044d05aa297df1a295572fa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.5/bgo_0.1.5_linux_arm64.tar.gz"
      sha256 "4a8dcc2bc08da52191dc6207ca212dad37a4f8c60b56095ef07ab832bd58946a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/biggo-cli/releases/download/v0.1.5/bgo_0.1.5_linux_amd64.tar.gz"
      sha256 "14ddae19bf062a5dd71a0b4b6ccc30b77cd0557450b3e1b63b9bf0e422f0f515"
    end
  end

  def install
    bin.install "bgo"
  end

  test do
    system "#{bin}/bgo", "--help"
  end
end
