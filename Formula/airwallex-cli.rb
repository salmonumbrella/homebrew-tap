class UairwallexUcli < Formula
  desc "Airwallex CLI - Banking in your terminal"
  homepage "https://github.com/salmonumbrella/airwallex-cli"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.28/airwallex-cli_0.2.28_darwin_arm64.tar.gz"
      sha256 "5e413def95b9288591e770e59b294b4d84d0915ad5f96db0a1ea42d1567ad144"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.28/airwallex-cli_0.2.28_darwin_amd64.tar.gz"
      sha256 "6d23c29b72f7978cf9116d92b3a2c4583689c74ac78ca5db97ab6174846431bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.28/airwallex-cli_0.2.28_linux_arm64.tar.gz"
      sha256 "0b1ce0fd6ea583eb491ecf457f4747cd36df58d876cd078968059fe1b8504467"
    end
    on_intel do
      url "https://github.com/salmonumbrella/airwallex-cli/releases/download/v0.2.28/airwallex-cli_0.2.28_linux_amd64.tar.gz"
      sha256 "e212ba135a2efcd8862aae5bdae98e2de040ae9c7107db0f104a1de5c1515d26"
    end
  end

  def install
    bin.install "awx"
  end

  test do
    system "#{bin}/awx", "--help"
  end
end
