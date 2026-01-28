class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.1/shopline-cli_darwin_arm64.tar.gz"
      sha256 "2aecaf29843cc5e174122b0206f93466975814a1b638d0719ad660b4d7a575d5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.1/shopline-cli_darwin_amd64.tar.gz"
      sha256 "d06a6231f01ac4e5e35b2d61bb167e8caf351362a33a5afe2a033cd57c5667f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.1/shopline-cli_linux_arm64.tar.gz"
      sha256 "7384be2daba48d11eaeb8b1f5e67f8c65e99243b2b8ba5383baf01e5d537cec2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.1/shopline-cli_linux_amd64.tar.gz"
      sha256 "7e3c0494e95463b483fe602de1a23a90186e8b50aa290d91bee5eb8b3be005db"
    end
  end

  def install
    bin.install "shopline"
  end

  test do
    system "#{bin}/shopline", "--help"
  end
end
