class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.3/eightsleep-cli_0.2.3_darwin_arm64.tar.gz"
      sha256 "e80d6b7d3601d685f638463b85b002b6cacf434c1e0d5e3f3886b75b409853e0"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.3/eightsleep-cli_0.2.3_darwin_amd64.tar.gz"
      sha256 "d5894499a34bf48951591970e1048c82bbeaee60b0d5d663013304faff5b0f62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.3/eightsleep-cli_0.2.3_linux_arm64.tar.gz"
      sha256 "92d861a581753977cdf2726481d85f78657dd8309485536b12c9fa44d8adc819"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.2.3/eightsleep-cli_0.2.3_linux_amd64.tar.gz"
      sha256 "d26a6dfa3e0bf6df7372bbbc6ce481700cafc0200e56397ad856d331bbcd2b82"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    system "#{bin}/eightsleep", "--help"
  end
end
