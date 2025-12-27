class DocusealCli < Formula
  desc "Command-line interface for DocuSeal document signing API"
  homepage "https://github.com/salmonumbrella/docuseal-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_darwin_arm64.tar.gz"
      sha256 "a90c8203c8f4125af965ac50846891f6f2169cb606b769a336fab73a4992c11a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_darwin_amd64.tar.gz"
      sha256 "7e630e5d75bde7cdcf3ffae3440384cd2f27af808be6cf459ae2a7eb4021e162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_linux_arm64.tar.gz"
      sha256 "b232b1eb5bd70206e546703a03741f43d7fb875fce07e5d7a73d78b606c69a03"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_linux_amd64.tar.gz"
      sha256 "f022159f194e969bc7f696aff17fb547e04a650d1e34d355ba37b27df5d730f9"
    end
  end

  def install
    bin.install "docuseal"
  end

  test do
    system "#{bin}/docuseal", "--help"
  end
end
