class BeeperCli < Formula
  desc "CLI for interacting with Beeper Desktop's local API"
  homepage "https://github.com/salmonumbrella/beeper-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-0.1.0-darwin-arm64.tar.gz"
      sha256 "2ddde357de19847b6e2cd06bc352b270a2646ed537da366747427ed9cc618fc5"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-0.1.0-darwin-amd64.tar.gz"
      sha256 "6ffe3a6fc7fdcff8821b7bdd705439355346d2ada65a3d59daae89e3c37149f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-0.1.0-linux-arm64.tar.gz"
      sha256 "3a38dc0765ab26ea276102308c5b775595947b979d322985f8a6c78bf7d65eba"
    end
    on_intel do
      url "https://github.com/salmonumbrella/beeper-cli/releases/download/v0.1.0/beeper-0.1.0-linux-amd64.tar.gz"
      sha256 "2a62cbb2b1125738414ed3d30cc8ae251a474bd353cce221ab2735f25ed06722"
    end
  end

  def install
    bin.install "beeper"
  end

  test do
    assert_match "beeper", shell_output("#{bin}/beeper --help")
  end
end
