class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_darwin_arm64.tar.gz"
      sha256 "f4a0b6f21cecac6805d92490f2586c7bc491e69e5cb76e92150cb7971485356f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_darwin_amd64.tar.gz"
      sha256 "0574c703880f38487db5513b44a7528fad5bb4a1c5858bffa29becc49888545d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_linux_arm64.tar.gz"
      sha256 "c4cccb4c606dd7cdec523698b8391c3edf67ad371f1333bc2171da7482f4cf24"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.1.0/deel_0.1.0_linux_amd64.tar.gz"
      sha256 "b2ba4b5e5978aebf440446200b9ffa4b3738cf467148d3f3a0aa609158ae7a43"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
