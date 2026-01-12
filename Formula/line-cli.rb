class LineCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.2/line-cli_0.3.2_darwin_arm64.tar.gz"
      sha256 "9686c8443c8c1ea2e3044427dce13fb415dfe0930bb50d7baa660f6820646064"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.2/line-cli_0.3.2_darwin_amd64.tar.gz"
      sha256 "c8d747035f90e596d5843c00ef72c4879d7d42a8b4ddc8c845adcc01c2eb2d92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.2/line-cli_0.3.2_linux_arm64.tar.gz"
      sha256 "1ac18396abf2aa30c401b04b5d379119e46d3ab2e8926b840408dd506800bf16"
    end
    on_intel do
      url "https://github.com/salmonumbrella/line-official-cli/releases/download/v0.3.2/line-cli_0.3.2_linux_amd64.tar.gz"
      sha256 "b9b52d938814fc2099aa8a45ae5dfd45b0c7d2857097c7954915277f2a1d1413"
    end
  end

  def install
    bin.install "line"
  end

  test do
    system "#{bin}/line", "--help"
  end
end
