class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.6/fastmail_0.2.6_darwin_arm64.tar.gz"
      sha256 "8431233fcaee104f1c3c4d78f37afb494162a4955e6fe025d1f8f4c6d6dae5f2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.6/fastmail_0.2.6_darwin_amd64.tar.gz"
      sha256 "1ea3151490a84402ed889526dc4ee9a13700530930d4bd555978be40b01298e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.6/fastmail_0.2.6_linux_arm64.tar.gz"
      sha256 "6d429319e8595e9e20789970c90c9ff39383315dc0d39f871d4c0c74c907509d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.6/fastmail_0.2.6_linux_amd64.tar.gz"
      sha256 "bcd16777f35fe15aaffd98965e847adfe84a96ae7c414df3fbb331d6d210e71c"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
