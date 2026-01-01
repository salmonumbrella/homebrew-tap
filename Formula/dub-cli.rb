class DubCli < Formula
  desc "CLI for Dub.co to manage links, domains, analytics, and workspaces"
  homepage "https://github.com/salmonumbrella/dub-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.3/dub-cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "93e2270ec0b4babe2276363a4b4c071aa387a2b5ea3f249556de27a7d44207b3"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.3/dub-cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "57b20f320206f4c9a2511621338b0d7fc4494bff63bc6e39909fafacb6a5ed47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.3/dub-cli_0.1.3_linux_arm64.tar.gz"
      sha256 "01353853b174b5b71c4fcc012c985570696e22f8da4f688ff55c0513b6ba6879"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.3/dub-cli_0.1.3_linux_amd64.tar.gz"
      sha256 "52f43cb8dae4c017843b49c43430c54b3d937f8d2558425ffe206fe958c41bb6"
    end
  end

  def install
    bin.install "dub"
  end

  test do
    system "#{bin}/dub", "--help"
  end
end
