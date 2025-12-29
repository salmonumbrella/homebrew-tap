class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.0/deel_0.2.0_darwin_arm64.tar.gz"
      sha256 "63240cebcb32580ed3e5826aec72c81d8bc95de8f12c370a553fd980dfac103c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.0/deel_0.2.0_darwin_amd64.tar.gz"
      sha256 "167243375bd11f4fed5df2b3434213c3ccfb08137619ed3d8c892e952ab01c70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.0/deel_0.2.0_linux_arm64.tar.gz"
      sha256 "91036e71251ea4b0b531dc1ac3c0bb2e76d82f8feb8d5d9b9f425710aa339def"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.0/deel_0.2.0_linux_amd64.tar.gz"
      sha256 "adcec931c746e3dc44058d0b29e3c06eb7c098ba025516bf6bd06341ce2c3e64"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
