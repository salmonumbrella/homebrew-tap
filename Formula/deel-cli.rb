class DeelCli < Formula
  desc "CLI for Deel to manage contracts, invoices, and payments"
  homepage "https://github.com/salmonumbrella/deel-cli"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.6/deel_0.5.6_darwin_arm64.tar.gz"
      sha256 "c02f1636588e0763fb6581be4a1ca430bde20354dbce660339c703063a82a8a4"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.6/deel_0.5.6_darwin_amd64.tar.gz"
      sha256 "4c5c374695d91870075e67fb1423866b296720c3f860d8549302b3f2e5233cad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.6/deel_0.5.6_linux_arm64.tar.gz"
      sha256 "e4568ad4da20c7a97e0860cb8c33a434bdc6386f7e89d7ddeff1d28d890eebb0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deel-cli/releases/download/v0.5.6/deel_0.5.6_linux_amd64.tar.gz"
      sha256 "14b98181d53ced0df882e3516db08d7a0628c1487670241afe8453ddf87db9d4"
    end
  end

  def install
    bin.install "deel"
  end

  test do
    system "#{bin}/deel", "--help"
  end
end
