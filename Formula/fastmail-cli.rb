class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.4/fastmail_0.1.4_darwin_arm64.tar.gz"
      sha256 "e51adc7d296cb5f48c4df1ceedee4e5d7e69cf209928ba06928fde7889d9fd7a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.4/fastmail_0.1.4_darwin_amd64.tar.gz"
      sha256 "da660487b2b8e9d133b3ab222ebaff63d652c427661327670da523a13a58abf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.4/fastmail_0.1.4_linux_arm64.tar.gz"
      sha256 "2f1490d6a65c9a8eb7479b8e1e81dc180dba72d649608d4e6f427d76fd2414c2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.1.4/fastmail_0.1.4_linux_amd64.tar.gz"
      sha256 "a0b45c0bd8848f3c5e9daec196714c45ff3cb7013fbad5effa720583d8e95a8b"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
