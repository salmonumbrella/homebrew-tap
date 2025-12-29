class DeputyCli < Formula
  desc "CLI for Deputy to manage employees, timesheets, rosters, and leave"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.0/deputy-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "a22d0209d37d3d0ef15e9e066bd97fabb7a80139d8a2657185013767d32c358a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.0/deputy-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "a5f1b536c608f7b75aba1e5287dd81ebe05bb00d8432fb0f19b22535e6100828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.0/deputy-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "9a743bafb794f1cedd7dc9d3cb2c273a2f72f848e3bc30453b3ae34b4dcbc7d8"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.0/deputy-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "8f38f3353d421fea4db4226d7c105dcf3bc811c58300d73a299a6163936013e9"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
