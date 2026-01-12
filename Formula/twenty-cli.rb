class TwentyCli < Formula
  desc "CLI for Twenty CRM"
  homepage "https://github.com/salmonumbrella/twenty-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.2/twenty_0.1.2_darwin_arm64.tar.gz"
      sha256 "3433938ad7c2235d9d9281eff2a04ebc4628f4ccd71121f0c242f344e4dadaf6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.2/twenty_0.1.2_darwin_amd64.tar.gz"
      sha256 "6b4f4ab140e298bf2f493e2fc0f92e1a44e39db8699ac605803e887125c22f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.2/twenty_0.1.2_linux_arm64.tar.gz"
      sha256 "f672e0a48850fb2526fcc8c3656ea64d8f7461ef59683be09bf633a46a39f630"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.2/twenty_0.1.2_linux_amd64.tar.gz"
      sha256 "2fac90acea524610e6efcd6474b33d1b2fa0e1f98cbd84f2c30c0271a3af1f2e"
    end
  end

  def install
    bin.install "twenty"
  end

  test do
    system "#{bin}/twenty", "--help"
  end
end
