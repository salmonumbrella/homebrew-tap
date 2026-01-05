class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.4/deel_0.4.4_darwin_arm64.tar.gz"
      sha256 "aee4b1b7afd5d03f1dbd92a3a98ae3abb8d787d7415cd195c60b429666e48bf6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.4/deel_0.4.4_darwin_amd64.tar.gz"
      sha256 "2bbbcf685d4f937475e52f4012d948e535f58e704d804b9210d1b6ec19b91375"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.4/deel_0.4.4_linux_arm64.tar.gz"
      sha256 "37fa2c8029b9d1331789aeda0be9d714360543fe83c664ec4e179772453cc85b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.4.4/deel_0.4.4_linux_amd64.tar.gz"
      sha256 "736c772847b3ca3b944ae739d9cd80461f4c0354f0c70ceedb2a33bd999ce4b8"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
