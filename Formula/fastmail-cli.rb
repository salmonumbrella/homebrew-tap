class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.6/fastmail_0.1.6_darwin_arm64.tar.gz"
      sha256 "73049b03c14c48e52fe4262c543b9d66d751608e165d40a14281afec966ab34d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.6/fastmail_0.1.6_darwin_amd64.tar.gz"
      sha256 "ce0e5f59546039b1279ddcb26b34b348530d57bc601c0375b048c9d84bfa6e5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.6/fastmail_0.1.6_linux_arm64.tar.gz"
      sha256 "f7859efad0a88c24822e537d9d9639dd020e811004ba83237cb6ac5124105646"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.6/fastmail_0.1.6_linux_amd64.tar.gz"
      sha256 "139dbbdee2d5709c57bc2e99aa958262e2d04f3369f8c43157b9869d7aa3d359"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
