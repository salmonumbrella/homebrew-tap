class DocusealCli < Formula
  desc "CLI for DocuSeal to manage documents, submissions, and templates"
  homepage "https://github.com/salmonumbrella/docuseal-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.2.1/docuseal_0.2.1_darwin_arm64.tar.gz"
      sha256 "a2ee241176bc5a73464f2bdb51b26202ae97cf18ca4ad61b2a979ad5ee59cf6e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.2.1/docuseal_0.2.1_darwin_amd64.tar.gz"
      sha256 "c9276b5c4a8a5e5d31b854fec3d203f23f2639b27198a80ba3fbe5b564dcf166"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.2.1/docuseal_0.2.1_linux_arm64.tar.gz"
      sha256 "45d4ed874a2f7772d1b02693bdcb42ed185ed43db41f3176a7372acf7b107e8d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.2.1/docuseal_0.2.1_linux_amd64.tar.gz"
      sha256 "6920c900b4b1c562e82b7120c13c1816aff26da146dbbd2df69372e476b2e19b"
    end
  end

  def install
    bin.install "docuseal"
  end

  test do
    system "#{bin}/docuseal", "--help"
  end
end
