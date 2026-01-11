class TwentyCli < Formula
  desc "CLI for Twenty CRM to manage people, companies, opportunities, and tasks"
  homepage "https://github.com/salmonumbrella/twenty-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.1/twenty_0.1.1_darwin_arm64.tar.gz"
      sha256 "5b21711f0fac1d3540a21a1131300d5313d273340859fb72b3db46f69187228b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.1/twenty_0.1.1_darwin_amd64.tar.gz"
      sha256 "1e57c51bceda295119b95b61279cb2aa538b46eb7b25a2f00b998748b6ee3135"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.1/twenty_0.1.1_linux_arm64.tar.gz"
      sha256 "f451e17588c2ef7a09c082923e07f59e94c37738d107522293c6f91550aa5d87"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.1/twenty_0.1.1_linux_amd64.tar.gz"
      sha256 "839e269d632110bcd628f6500021f6486a64e6f1f68c563ef7b3ab04ff1d9589"
    end
  end

  def install
    bin.install "twenty"
  end

  test do
    system "#{bin}/twenty", "--help"
  end
end
