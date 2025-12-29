class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.1/deel_0.2.1_darwin_arm64.tar.gz"
      sha256 "3d5b9fefe54e96e85fed8753e625dc9d254a774b967aa13045e65ca96a517a35"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.1/deel_0.2.1_darwin_amd64.tar.gz"
      sha256 "077fc526de4e99e705b929d5b173651478712d8a2aa628de93e3922431babb01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.1/deel_0.2.1_linux_arm64.tar.gz"
      sha256 "befeb37f3a69dff0bccf6636bf2a52d67f75ff5b76a71f1cbe6c915a900ffe90"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.2.1/deel_0.2.1_linux_amd64.tar.gz"
      sha256 "f249fc14f151d8a2c1fdf429e75eca28743fe83c5a88a4d921b0dac0e84c14a8"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
