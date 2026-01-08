class DeputyCli < Formula
  desc "CLI for Deputy to manage employees, timesheets, rosters, and leave"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.2/deputy-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "6b6d9c07d0789dd0d27a3672377fc7db4d5e732856aec442e9eb5f88caad90af"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.2/deputy-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "a2987a1eec4ab6803ca32085777ebc9ff39596f4178449aed0d86d3ff6bc14a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.2/deputy-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "267a7c6bd3e74c6302e0eb1216433a47b026e4a7bf9ffc5461106c181f26babc"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.2/deputy-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "6725e3aff6605cbb602210a19148dee49d7649762393e6ddd8f6c93cca12ad8e"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
