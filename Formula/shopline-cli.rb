class ShoplineCli < Formula
  desc "CLI for Shopline e-commerce platform"
  homepage "https://github.com/salmonumbrella/shopline-cli"
  version "0.7.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.15/shopline-cli_darwin_arm64.tar.gz"
      sha256 "72f10fd8f96ffc5fabd2f2aa4e5fa321d606bd7c2b9b94cc986af9f962353878"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.15/shopline-cli_darwin_amd64.tar.gz"
      sha256 "bf4effde375a00e9f2d02881fdb761fc3113e0c51e2d5ee15a719269bdcbf2c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.15/shopline-cli_linux_arm64.tar.gz"
      sha256 "174638fa378300435f739c40648e9f766014a4accb376f94b16b4ff8f310096c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/shopline-cli/releases/download/v0.7.15/shopline-cli_linux_amd64.tar.gz"
      sha256 "8aab1094ecbd13ddc5dc737795e72ff9a11277217ac0220e23e1aa0d5d2332aa"
    end
  end

  def install
    bin.install "spl"
  end

  test do
    system "#{bin}/spl", "--help"
  end
end
