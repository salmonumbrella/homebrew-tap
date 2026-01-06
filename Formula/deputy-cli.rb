class DeputyCli < Formula
  desc "CLI for Deputy to manage employees, timesheets, rosters, and leave"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.1/deputy-cli_0.1.1_darwin_arm64.tar.gz"
      sha256 "21dc9194359811af2f63885878f7ae5cbe29d70bc6a3d729680a0e1363295ae2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.1/deputy-cli_0.1.1_darwin_amd64.tar.gz"
      sha256 "1463babc18182c0341db2f118a07a39bb0879982794f596c9840538109b2fe92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.1/deputy-cli_0.1.1_linux_arm64.tar.gz"
      sha256 "d4d8258526a784ff810610d9e77e71aae87841f8c3f6e7ac97cb80757f64a977"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.1/deputy-cli_0.1.1_linux_amd64.tar.gz"
      sha256 "ad55dcad1a07f60eeb4b868d725c53c7c0b1621bae265f226b34962c13a4baa4"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
