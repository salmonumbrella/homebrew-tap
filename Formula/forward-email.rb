class ForwardEmail < Formula
  desc "CLI for Forward Email to manage domains, aliases, and email operations"
  homepage "https://github.com/ginsys/forward-email"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ginsys/forward-email/releases/download/v0.1.0/forward-email_0.1.0_darwin_arm64.tar.gz"
      sha256 "14ebb0b1135a9e6f96182a6e3e40b50dee7421e70723336ffae8e95e4b1fce16"
    end
    on_intel do
      url "https://github.com/ginsys/forward-email/releases/download/v0.1.0/forward-email_0.1.0_darwin_amd64.tar.gz"
      sha256 "73a75eee5df50b4d29b0b3480f9ac46e233cce1d7e6040c878ac427b12528b0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ginsys/forward-email/releases/download/v0.1.0/forward-email_0.1.0_linux_arm64.tar.gz"
      sha256 "d3b9909c17ce0ccec982c8407c7d416a406ab1107dfc3f542e002759dd527e37"
    end
    on_intel do
      url "https://github.com/ginsys/forward-email/releases/download/v0.1.0/forward-email_0.1.0_linux_amd64.tar.gz"
      sha256 "11e750528b7de9c1dbe982fe6b6fd07f001a3b7142ca769d603696095ff40f86"
    end
  end

  def install
    bin.install "forward-email"
  end

  test do
    system "#{bin}/forward-email", "--help"
  end
end
