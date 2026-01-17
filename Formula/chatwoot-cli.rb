class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.5/chatwoot-cli_0.2.5_darwin_arm64.tar.gz"
      sha256 "1289c39497b1e2b92c02229cfd4e1b0119895a2dbf41cc821ace4443bc400543"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.5/chatwoot-cli_0.2.5_darwin_amd64.tar.gz"
      sha256 "11ae5687e30d9a71e507914d60c89e30ed23b09937e918c71bfcc3e613875ae4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.5/chatwoot-cli_0.2.5_linux_arm64.tar.gz"
      sha256 "298e42cb73e54c790b0d32eae0cfbbbf3f1bd6b997af900c65c3366e2e55f34b"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.2.5/chatwoot-cli_0.2.5_linux_amd64.tar.gz"
      sha256 "93040761ce79e56aeeac0e8ca68e46005dbdea878dced20527bf34a072156885"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
