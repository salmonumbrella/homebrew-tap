class DeputyCli < Formula
  desc "CLI for Deputy to manage employees, timesheets, rosters, and leave"
  homepage "https://github.com/salmonumbrella/deputy-cli"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.6/deputy-cli_0.1.6_darwin_arm64.tar.gz"
      sha256 "728512b8771f4f63df3f0843f4ad0e5b53263f17ab11b85d88b013a01c0dfe7f"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.6/deputy-cli_0.1.6_darwin_amd64.tar.gz"
      sha256 "0c9dd057f94ecd9d72d81148af7496ec01736df254ee0c8a300cfa9bb7f44718"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.6/deputy-cli_0.1.6_linux_arm64.tar.gz"
      sha256 "db0c1d2e1b91fc0638de93cfde6fa7383efb7a6719d827b681ff60b27a158557"
    end
    on_intel do
      url "https://github.com/salmonumbrella/deputy-cli/releases/download/v0.1.6/deputy-cli_0.1.6_linux_amd64.tar.gz"
      sha256 "70d885ae1d6a99e5c217739ed41f494489f08bb0a008b51f753d30ced1969da2"
    end
  end

  def install
    bin.install "deputy"
  end

  test do
    system "#{bin}/deputy", "--help"
  end
end
