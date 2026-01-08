class LineCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.1/line-cli_0.3.1_darwin_arm64.tar.gz"
      sha256 "4d2b0dc487f54c6a956aa514ec82b07374c91cc84a5cc845d068a8162f0ed7c8"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.1/line-cli_0.3.1_darwin_amd64.tar.gz"
      sha256 "fea549bb8927faba20f830932b8937a620976934c6f7d272e6bddce6c5087c32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.1/line-cli_0.3.1_linux_arm64.tar.gz"
      sha256 "a8c5c937e21135a4b6b64af5227287d1370854a049cf74770df8fb408aa2d3e2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.1/line-cli_0.3.1_linux_amd64.tar.gz"
      sha256 "5c0df17065b7c8c5c9fee0fed0856ed94fce169425f3b8d5d08a2a96d91d98c9"
    end
  end

  def install
    bin.install "line"
  end

  test do
    system "#{bin}/line", "--help"
  end
end
