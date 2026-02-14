class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.4/shopline-cli_0.7.4_darwin_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.4/shopline-cli_0.7.4_darwin_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.4/shopline-cli_0.7.4_linux_arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.4/shopline-cli_0.7.4_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "spl"
  end

  test do
    system "#{bin}/spl", "--help"
  end
end
