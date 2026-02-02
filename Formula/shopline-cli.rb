class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.2/shopline-cli_darwin_arm64.tar.gz"
      sha256 "7abc9707d1ebee0a3baa895852f27a5084043974de40bb86ede4c1fbf58c42f7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.2/shopline-cli_darwin_amd64.tar.gz"
      sha256 "11b5265178df50adf2a88143e13fd48fa2ced86727d88efd268d3e1f96f0c3a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.2/shopline-cli_linux_arm64.tar.gz"
      sha256 "1193ecfe5743150725d29317bfc1eb4dc6bbeefbda4906a75c50fbdf991f907d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.4.2/shopline-cli_linux_amd64.tar.gz"
      sha256 "d693b319e8afb374d1e2ebeee5dd72ca70176a188ab3606ab2956531ba52388a"
    end
  end

  def install
    bin.install "shopline"
  end

  test do
    system "#{bin}/shopline", "--help"
  end
end
