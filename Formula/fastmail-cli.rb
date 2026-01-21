class FastmailCli < Formula
  desc "CLI for Fastmail to manage emails, folders, and masked addresses"
  homepage "https://github.com/salmonumbrella/fastmail-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.3/fastmail_0.2.3_darwin_arm64.tar.gz"
      sha256 "b3fb5c56090ed0634920b34494e5664413cb0d13f4a07e7484e756ed942317bc"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.3/fastmail_0.2.3_darwin_amd64.tar.gz"
      sha256 "cbe400be657ea070cf431cd8505a20ecc248e5c34f0f11c90be3a1e360bb8fd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.3/fastmail_0.2.3_linux_arm64.tar.gz"
      sha256 "2bfec4ca366187a7ab5d715c84daed55ff918540cf5e2a6b6b72083e8b372740"
    end
    on_intel do
      url "https://github.com/salmonumbrella/fastmail-cli/releases/download/v0.2.3/fastmail_0.2.3_linux_amd64.tar.gz"
      sha256 "609522dc4d2c9c9b3e17804d43c8735ea7347b1b3b1ab6ac9bd8c68c37bdfa46"
    end
  end

  def install
    bin.install "fastmail"
  end

  test do
    system "#{bin}/fastmail", "--help"
  end
end
