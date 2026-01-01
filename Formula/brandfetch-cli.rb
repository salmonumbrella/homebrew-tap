class BrandfetchCli < Formula
  desc "CLI for Brandfetch to fetch logos, colors, and brand assets"
  homepage "https://github.com/salmonumbrella/brandfetch-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.3/brandfetch_0.1.3_darwin_arm64.tar.gz"
      sha256 "d91c9ab330d133a14e338b00e6bac95f9025b223f96f87c80bca9bb7dff79784"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.3/brandfetch_0.1.3_darwin_amd64.tar.gz"
      sha256 "4fddc012078d0f6b3b6d745a45993d931ff758dde35042a2c303f0e45ba063e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.3/brandfetch_0.1.3_linux_arm64.tar.gz"
      sha256 "ba61d51256aab83ed674adc08e586b152550da21910188c3820151a2cebd3f3f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/brandfetch-cli/releases/download/v0.1.3/brandfetch_0.1.3_linux_amd64.tar.gz"
      sha256 "b915c0cd945268295bafc9b2ed97bbdd681c2fe42954295e96ba8509c479c3a2"
    end
  end

  def install
    bin.install "brandfetch"
  end

  test do
    system "#{bin}/brandfetch", "--help"
  end
end
