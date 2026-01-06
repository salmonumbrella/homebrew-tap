class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.6/deel_0.4.6_darwin_arm64.tar.gz"
      sha256 "3f0c95854b9fb5610a532313e280f9df3c33d2f078b5a5cd070f54d004ee9ec6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.6/deel_0.4.6_darwin_amd64.tar.gz"
      sha256 "4e227bd11ae0c0e382766fc91f3d08f398fc83c38a99dd118f49f9f98e914335"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.6/deel_0.4.6_linux_arm64.tar.gz"
      sha256 "b902821f0a89da29f87f0519fb5eccdda7a675c88de2356af55c184cf4331ad2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.6/deel_0.4.6_linux_amd64.tar.gz"
      sha256 "ff2672804ac4d345767eed877edd71d331a2f491d116a4e49598693b1b3d2827"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
