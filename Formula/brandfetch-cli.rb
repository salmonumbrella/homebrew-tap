class BrandfetchCli < Formula
  desc "Brandfetch CLI"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_darwin_arm64.tar.gz"
      sha256 "18d58b2c2be38618e984e32109d839d33b0f9b9f19f8f8487678edf90e7400e0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_darwin_amd64.tar.gz"
      sha256 "8c4d3f4d95955658e3776eb353d2b7f8a9e8dd4bff07098de04167eb7553cf4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_linux_arm64.tar.gz"
      sha256 "aa3795bdaefc328bec089dd8f756d9582b879298c3463892577b2e904a6d1d2a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.4/brandfetch_0.1.4_linux_amd64.tar.gz"
      sha256 "fe4ed8e1fc06d4d43e7ed75d0eed19b79ca9f67438ee5e525cf18736524071a7"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
