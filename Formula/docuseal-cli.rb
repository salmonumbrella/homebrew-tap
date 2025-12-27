class DocusealCli < Formula
  desc "CLI for DocuSeal to manage documents, submissions, and templates"
  homepage "https://github.com/salmonumbrella/docuseal-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_darwin_arm64.tar.gz"
      sha256 "5bf739846432c21df49f32dea8919500a174a3820791d01511c39f41f2e4a4c3"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_darwin_amd64.tar.gz"
      sha256 "fd43217358278f3fe3a8a8c343563641f0235881f2276df6fc2d8da42b3102b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_linux_arm64.tar.gz"
      sha256 "1d1fdedf59b19c0be26315d19417e18673e23162e9af35a164538067a4ba0047"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.0/docuseal_0.1.0_linux_amd64.tar.gz"
      sha256 "a552ac53f0594c8935cd34df1dcb450dd142504c0362ac298d3b82e52fe3346e"
    end
  end

  def install
    bin.install "docuseal"
  end

  test do
    system "#{bin}/docuseal", "--help"
  end
end
