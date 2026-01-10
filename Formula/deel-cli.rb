class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.4/deel_0.5.4_darwin_arm64.tar.gz"
      sha256 "a60d1b37abaf7386202f7e80373332b7f0ad0d7682f9f10b31f743394a8a50a1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.4/deel_0.5.4_darwin_amd64.tar.gz"
      sha256 "6c4962586c45949acb4c557d0892d5ed5d1aef4607ef279c7e07f4f7a99e31b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.4/deel_0.5.4_linux_arm64.tar.gz"
      sha256 "e426a83cfceac6d34dfb2551a2330862920af36a1aa9dbd90734c918e248adae"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.4/deel_0.5.4_linux_amd64.tar.gz"
      sha256 "ec57406a309ead6d2b4f87219f9a7ce5384d9b8773c64a36e1640933eda6d9b1"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
