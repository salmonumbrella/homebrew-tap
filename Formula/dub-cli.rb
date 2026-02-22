class UdubUcli < Formula
  desc "CLI for Dub.co links, domains, analytics"
  homepage "https://github.com/salmonumbrella/dub-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "f3edc57f439f989137d8f36f2b05aa7d5de57b5a875d77c0389a9a145d7bcfab"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "be01166f0276bba48e121e844119a001a27b81fc7b74e92460c302190932aa32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "bc5f74794bbb7173ed965abc694a3a1d76d140e13d0d750cd468cfc373dc57f2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "45255b553bae61d88a4c74eacdece1dc5b1d7082500cbeaa9652a0318405b813"
    end
  end

  def install
    bin.install "dub"
  end

  test do
    system "#{bin}/dub", "--help"
  end
end
