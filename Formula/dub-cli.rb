class DubCli < Formula
  desc "CLI for Dub.co to manage links, domains, analytics, and workspaces"
  homepage "https://github.com/salmonumbrella/dub-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.2/dub-cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "0f965e24f2b3a79e480d4f19c454acd7f32425e21429166deb7aefa37a09c823"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.2/dub-cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "db47bce61d7fe2f11a999c0ab2b8ed0c40514bedaa90da9482f6f0888a01eecd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.2/dub-cli_0.1.2_linux_arm64.tar.gz"
      sha256 "9ca1ffec89cfa265d2249cf9a31049fe4d59686e5e66a250ba3f4c37b520d66a"
    end
    on_intel do
      url "https://github.com/salmonumbrella/dub-cli/releases/download/v0.1.2/dub-cli_0.1.2_linux_amd64.tar.gz"
      sha256 "95d1acf5e381135b1b9fac63ca5a0e054a1a7b92fdbcb824564fad53e6a65580"
    end
  end

  def install
    bin.install "dub"
  end

  test do
    system "#{bin}/dub", "--help"
  end
end
