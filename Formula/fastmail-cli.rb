class UfastmailUcli < Formula
  desc "Fastmail CLI for email, masked addresses, calendars"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.13/fastmail_0.2.13_darwin_arm64.tar.gz"
      sha256 "3974f125bf633be95e4fd630fca63900390829b734595e2c8244e93f0b4d136b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.13/fastmail_0.2.13_darwin_amd64.tar.gz"
      sha256 "6bba854f0102ab11ec4f45b36dd7e378bf746c4b3f9396b4be6dc03813737ac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.13/fastmail_0.2.13_linux_arm64.tar.gz"
      sha256 "9822c638984926c9b171558625972f20f2817988fbe431a758d16f1e4e3f6a7f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.13/fastmail_0.2.13_linux_amd64.tar.gz"
      sha256 "fb72f61cff18543f9d13cf7462c69863309e0ae785c230344a5ee7eebb4a1e96"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
