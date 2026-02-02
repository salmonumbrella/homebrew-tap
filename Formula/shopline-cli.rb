class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.0/shopline-cli_darwin_arm64.tar.gz"
      sha256 "3ec619426ca099f6da9a1e3272b673f030acd44bfd59d1dbc1cd7646e6e0093b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.0/shopline-cli_darwin_amd64.tar.gz"
      sha256 "84192d4b2db54990a8def06a217af0718452d3fb124d64cdda45969f308f3a67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.0/shopline-cli_linux_arm64.tar.gz"
      sha256 "1067fb0e29ed20f2394206f37ed44518abc48a8e6edd1a3074ca58edef9919e4"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.0/shopline-cli_linux_amd64.tar.gz"
      sha256 "6cee2febf966468560726bb00b75215a0dab526a35cf92fa1bf85c05630b91f3"
    end
  end

  def install
    bin.install "shopline"
  end

  test do
    system "#{bin}/shopline", "--help"
  end
end
