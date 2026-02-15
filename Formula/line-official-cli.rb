# typed: false
# frozen_string_literal: true

class LineOfficialCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.4.0/lno_0.4.0_darwin_arm64.tar.gz"
      sha256 "86c870b88a92b03116fa7f0cbb3b32286825286222d715d056f7495b7ea6201b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.4.0/lno_0.4.0_darwin_amd64.tar.gz"
      sha256 "d6e26c02c13270b723e03c102352d7380a3b3a8bd5733d5983b6196644fa82fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.4.0/lno_0.4.0_linux_arm64.tar.gz"
      sha256 "8c2d0d0cd0e070f4208d40c17fd503f2b24ee20ad92208bc3a854c0356d632e7"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.4.0/lno_0.4.0_linux_amd64.tar.gz"
      sha256 "539b30e5a299184fad5755ed12d09839e6eeecf800b855b328e8c1355b86debe"
    end
  end

  def install
    bin.install "lno"
  end

  test do
    system "#{bin}/lno", "--help"
  end
end
