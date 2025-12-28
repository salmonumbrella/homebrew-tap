class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.0/brandfetch_0.1.0_darwin_arm64.tar.gz"
      sha256 "9fa2f7ac642bd8db4c11ffcc9e38da430a4d520695cfbd269e29e3176004ce9f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.0/brandfetch_0.1.0_darwin_amd64.tar.gz"
      sha256 "a966aa6f824d15739e1c90997e394b8f8cfc3134ab805fbba9d6cf182306bf77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.0/brandfetch_0.1.0_linux_arm64.tar.gz"
      sha256 "624698cff2c6cef0772fee70b0c9b2bb1e3acb5ff67a74a0c689fd908f75c8e1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.0/brandfetch_0.1.0_linux_amd64.tar.gz"
      sha256 "a6d6aa896a1ca1bd2898eef45f74f19c540659556e78067cc671b73de9d41d60"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
