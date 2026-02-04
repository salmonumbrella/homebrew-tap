class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.7/deel_0.5.7_darwin_arm64.tar.gz"
      sha256 "1b23a54b6cc00cfc7fcd90f13ac08651c0ee48bfec8116c16dc6d61bab08546e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.7/deel_0.5.7_darwin_amd64.tar.gz"
      sha256 "4966148a12ccf7214a48fd9ddc36dd04531ef0ce71b81ac2c0fef11f55014865"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.7/deel_0.5.7_linux_arm64.tar.gz"
      sha256 "7bca8280de9154b45f27798ad5eb458adaaa1a5fae3cc5510fdfe002ebb3b553"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.7/deel_0.5.7_linux_amd64.tar.gz"
      sha256 "b642c5f1fbe0da56d6b402637c3ae377958cba992d8e9870a388c3d121835abe"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
