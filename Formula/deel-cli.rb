class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.3/deel_0.5.3_darwin_arm64.tar.gz"
      sha256 "7ee9a4b7110e53b6adaf2eb3b8af9a970e5140b4d582f77f7686db8d1b668857"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.3/deel_0.5.3_darwin_amd64.tar.gz"
      sha256 "843e51f6778b9113b5c49d322971cea5a03660bbfb003140e93ba5e4437e6e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.3/deel_0.5.3_linux_arm64.tar.gz"
      sha256 "d01cf15c303dca3f493ff442c8782a6bcb59e4270f7d3e06b57b04ab2daee859"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.3/deel_0.5.3_linux_amd64.tar.gz"
      sha256 "71d43171aee185a82f8de2ebde945425f9d25aa78fd57052f8357be4b5870a39"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
