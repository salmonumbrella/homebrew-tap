class EightsleepCli < Formula
  desc "Control your Eight Sleep Pod from the terminal"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.7/eightsleep-cli_0.2.7_darwin_arm64.tar.gz"
      sha256 "64689db7c6e061867bc657f1cc2fcce67c1c01d1de8631cc8708ccd8ff049a0b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.7/eightsleep-cli_0.2.7_darwin_amd64.tar.gz"
      sha256 "98230fac53839a0d34d9752793d46ee2aff95838b705be0e9f6b55ef523039ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.7/eightsleep-cli_0.2.7_linux_arm64.tar.gz"
      sha256 "ff01b0ec5815d5fe50c4acfd8b946dbf62d371a8957575e5e1ae9ad3b78524a1"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.7/eightsleep-cli_0.2.7_linux_amd64.tar.gz"
      sha256 "225417890f7a6e24725414b2b323bc63badea43566f95005130614994967905a"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
