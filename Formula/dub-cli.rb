class DubCli < Formula
  desc "CLI for Dub.co to manage links, domains, analytics, and workspaces"
  homepage "https://github.com/salmonumbrella/dub-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "8e9f11584f02f88e67e228489ee4146257752c206765634bd6f56541d385862c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "113b6aeaba64879a2f31ce2abc1b868baedcd7d98866a9a6f78cf1e34b30f3f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_linux_arm64.tar.gz"
      sha256 "7872b869deeb0341905240230af696eef26bbab85763df97fe7af291446d532e"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.4/dub-cli_0.1.4_linux_amd64.tar.gz"
      sha256 "d2ad94ee5eef5835f439730e69ee0220ab75f0f7648ddc6c362d72285b0f25ed"
    end
  end

  def install
    bin.install "dub"
  end

  test do
    system "#{bin}/dub", "--help"
  end
end
