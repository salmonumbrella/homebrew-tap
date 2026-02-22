class UdeelUcli < Formula
  desc "Deel CLI - Workforce management in your terminal"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.18/deel_0.5.18_darwin_arm64.tar.gz"
      sha256 "269e293364354842bd467c244b31b5b70b06e321ba2af714f9729096c1361102"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.18/deel_0.5.18_darwin_amd64.tar.gz"
      sha256 "0376073331af07ec09b7f778f5e029b0423cb5390db1a6ee094c1be4c5472813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.18/deel_0.5.18_linux_arm64.tar.gz"
      sha256 "908a2aa65abe9be383627fd57c97594ce252ef7d555375f7f23cdfa794d2070c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.18/deel_0.5.18_linux_amd64.tar.gz"
      sha256 "1865ddfe8508fd29db2dc8257413913a561e62e834122d5f72977aefbd983872"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
