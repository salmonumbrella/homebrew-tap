class FastmailCli < Formula
  desc "Command-line interface for Fastmail email and masked email management"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.5.0/fastmail_0.5.0_darwin_arm64.tar.gz"
      sha256 "9a9a07f50d4de9543b64f88cb9c2466e0d3fb4cc010309aec8c0b72a24c235cf"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.5.0/fastmail_0.5.0_darwin_amd64.tar.gz"
      sha256 "2278f54a1ac3d1c7b4381776247f4a2515f89226d7f233c4678c5481c88d32ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.5.0/fastmail_0.5.0_linux_arm64.tar.gz"
      sha256 "a8e0875672539d4d219897153d334ba2b9fa9386045169cf1eedbbf5068da13f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.5.0/fastmail_0.5.0_linux_amd64.tar.gz"
      sha256 "3274b6cb58b9807595655aea4a1605f2b6c2dc9c22d2a839f7b6e3db72f17dd6"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--version"
  end
end
