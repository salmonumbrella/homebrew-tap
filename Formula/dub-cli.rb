class DubCli < Formula
  desc "CLI for Dub.co to manage links, domains, analytics, and workspaces"
  homepage "https://github.com/salmonumbrella/dub-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.0/dub-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "64d0a21a7479516d6463094d0e50056a67e51fc29b538393eb8656308a68a948"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.0/dub-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "d5c960d661910083e3e7a734e0a50786f150b54e44bb12975388ccdcee06ef46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.0/dub-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "bd8a7603ba008ecbcbb5215a053d1797ea83fce102b7d6550195088118626f15"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.0/dub-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "70f4212741f6c735a0490b3a2be9ff347637f30ba21c0854d4251fd214e188c9"
    end
  end

  def install
    bin.install "dub"
  end

  test do
    system "#{bin}/dub", "--help"
  end
end
