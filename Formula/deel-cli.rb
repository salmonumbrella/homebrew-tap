class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.3/deel_0.2.3_darwin_arm64.tar.gz"
      sha256 "9596be79c84dbffaf16025a1c0cb305e9d847a398dc30e915527e5aab49072d0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.3/deel_0.2.3_darwin_amd64.tar.gz"
      sha256 "d980a47717d7a2d77b66bd61791ba8d2ae38f2928d70207a4d7e9452068b9ba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.3/deel_0.2.3_linux_arm64.tar.gz"
      sha256 "d623797511ca63f4c7e9440dd8c942bc111393ca8d5db4c805c23aa2fe53b956"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.3/deel_0.2.3_linux_amd64.tar.gz"
      sha256 "a200d60cce02f9e71af116985d199014772f1820213a15e13fa4d999fb0b7912"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
