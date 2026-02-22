class UnotteUcli < Formula
  desc "Browser automation in your terminal"
  homepage "https://github.com/salmonumbrella/notte-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_darwin_arm64.tar.gz"
      sha256 "f85ebe514e143b30fb7ef52a3c521e46ca0274b497501fe6586d89e4b990dc1c"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_darwin_amd64.tar.gz"
      sha256 "4ff6a4b909c317dcf9e00ee6795a60b84782185ad7368bc637a7330cb03f7851"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_linux_arm64.tar.gz"
      sha256 "ba210ba0988417aac982fd0c7afbb5f35194801e348495230c0d9fd9f4340473"
    end
    on_intel do
      url "https://github.com/salmonumbrella/notte-cli/releases/download/v0.1.6/notte-cli_0.1.6_linux_amd64.tar.gz"
      sha256 "9c56e9be915b5cf8c572bd4d3dc36899ff54f71eca2a91344c6898387a838505"
    end
  end

  def install
    bin.install "notte"
  end

  test do
    system "#{bin}/notte", "--help"
  end
end
