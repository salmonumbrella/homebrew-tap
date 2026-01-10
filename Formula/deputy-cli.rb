class DeputyCli < Formula
  desc "CLI for Deputy to manage employees, timesheets, rosters, and leave"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.5/deputy-cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "968155e373b34aad654e8c4b863bd576378b2d4746f6145feac3202d207cea69"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.5/deputy-cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "1b056cb115be5d418131f5a43beba2bfafb8bc7c3759a9b6cdea863cf28bd0f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.5/deputy-cli_0.1.5_linux_arm64.tar.gz"
      sha256 "cf023f5ea90c1ee3b939c19a41bd450e700edca70d6ec21eae1496ae320cbb90"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.5/deputy-cli_0.1.5_linux_amd64.tar.gz"
      sha256 "12e1b76272e1d78ce3f41fb5564bc05ea1492e453920b2c92a7fefdb45b62f27"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
