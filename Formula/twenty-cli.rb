class TwentyCli < Formula
  desc "CLI for Twenty CRM to manage people, companies, opportunities, and tasks"
  homepage "https://github.com/salmonumbrella/twenty-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.0/twenty_0.1.0_darwin_arm64.tar.gz"
      sha256 "b9dbc6454f212345771d9f81b706d74ca36c6ca44ef18a4903a54ad415167284"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.0/twenty_0.1.0_darwin_amd64.tar.gz"
      sha256 "a1e022a5ca07d43ac9a5ae6e493fdb99de77d52e7ed15bf1387a07d6a68ffacf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.0/twenty_0.1.0_linux_arm64.tar.gz"
      sha256 "520afa88a61adf666d0b2354050ed4bc4f93ecfe7b5061d20fc23dc7dcd045c6"
    end
    on_intel do
      url "https://github.com/salmonumbrella/twenty-cli/releases/download/v0.1.0/twenty_0.1.0_linux_amd64.tar.gz"
      sha256 "27ef1287829468e9465c4ad2b475599245aa0b5ac6caa3a4bd1be5768f048a49"
    end
  end

  def install
    bin.install "twenty"
  end

  test do
    system "#{bin}/twenty", "--help"
  end
end
