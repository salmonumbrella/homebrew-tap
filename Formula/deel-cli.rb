class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.0/deel_0.5.0_darwin_arm64.tar.gz"
      sha256 "d68def43d8e8f22339fed6970bd7f8fa7c53a11ed46cffb5dd86bad0f69e3063"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.0/deel_0.5.0_darwin_amd64.tar.gz"
      sha256 "b80e968f06ea7ad02ca5bbd713021873b2ae0556890eee22f1696ed7ddaec324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.0/deel_0.5.0_linux_arm64.tar.gz"
      sha256 "32e7b5f3f6e2b9b089bd90ef1b604b68ad4fc879dc02be2b98ad6d4396993644"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.0/deel_0.5.0_linux_amd64.tar.gz"
      sha256 "ea283768d7ab276e82f306ee5bd22f9cbf99a059664f143ad88ecb52cd827ddf"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
