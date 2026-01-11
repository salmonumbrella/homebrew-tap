class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.5/deel_0.5.5_darwin_arm64.tar.gz"
      sha256 "e800e401c07309bb406e0b5c6f6954986685f2ceb88df2b7268c8d138ac63443"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.5/deel_0.5.5_darwin_amd64.tar.gz"
      sha256 "27b8bf48b370d3ea69816d5822e0c573ab6df860e1ca0e4730333e7b27520d24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.5/deel_0.5.5_linux_arm64.tar.gz"
      sha256 "8f0070e70743ba2954b9fd15c4d6b6a4260fdba450f1de779d63b440613a5dd6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.5/deel_0.5.5_linux_amd64.tar.gz"
      sha256 "9a740db4fcefbe12b1701329b1ea0ff85faac56234228f93053784fae50c05a4"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
