class DocusealCli < Formula
  desc "CLI for DocuSeal to manage documents, submissions, and templates"
  homepage "https://github.com/salmonumbrella/docuseal-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.1/docuseal_0.1.1_darwin_arm64.tar.gz"
      sha256 "f22747e98fdbfaeb180c88bc15fe113160fe8662d85458deaaf53ddb94df421d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.1/docuseal_0.1.1_darwin_amd64.tar.gz"
      sha256 "e12cdb4d3ee8ad7363482fe4f58f7601de2a7dcf3ffb4268305a5559538e9fc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.1/docuseal_0.1.1_linux_arm64.tar.gz"
      sha256 "838fdafcfed0ac3fb0b41d5532e14b8f453fcecf44fcef19f12cbdb95c695da1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/docuseal-cli/releases/download/v0.1.1/docuseal_0.1.1_linux_amd64.tar.gz"
      sha256 "0f6ab6d5576e166d3ad2bde482ef88eeba897fc98e82110566ae74669e2c0cbf"
    end
  end

  def install
    bin.install "docuseal"
  end

  test do
    system "#{bin}/docuseal", "--help"
  end
end
