class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.1/shopline-cli_darwin_arm64.tar.gz"
      sha256 "e9fadc4828d01554567d130a06af3a6b52dea7eff864dc0b71f6bf376d2ae922"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.1/shopline-cli_darwin_amd64.tar.gz"
      sha256 "e35ebaa1257fa911078128e995fc6f926a372b554c54545cec707ee0f9d20a85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.1/shopline-cli_linux_arm64.tar.gz"
      sha256 "8cf483ae0faa28f9fe3c9dd23bbbfb84d1f561aa30837393affb3ccc35d0c0d0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.5.1/shopline-cli_linux_amd64.tar.gz"
      sha256 "497f48d258ca608b2e89bd23b865da526868a01b02fcc66d798a04f47575e5c4"
    end
  end

  def install
    bin.install "shopline"
  end

  test do
    system "#{bin}/shopline", "--help"
  end
end
