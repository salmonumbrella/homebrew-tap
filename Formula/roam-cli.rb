class RoamCli < Formula
  desc "Command-line interface for Roam Research"
  homepage "https://github.com/salmonumbrella/roam-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.0/roam-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "3c170ba4567f8c41b431edf5ee529598943359166a02cad3e6dc1fa41d203087"
    end
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.0/roam-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "6070a18ce61d6c71c4328a681f2e576e80595fdc54808c90c1b2504120cc3003"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.0/roam-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "6c4143532a7c0d17bb9c04f7c91a5fd709fc62fa644dfcbd5d66f1e6bf117578"
    end
    on_arm do
      url "https://github.com/salmonumbrella/roam-cli/releases/download/v0.1.0/roam-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "a439cac55573e92d7c8a3686b2a1ed2bf70fefd2a25a5dd5881e45a7c11e1344"
    end
  end

  def install
    bin.install "roam"
  end

  test do
    system "#{bin}/roam", "--version"
  end
end
