class ChatwootCli < Formula
  desc "CLI for Chatwoot to manage conversations, contacts, and inboxes"
  homepage "https://github.com/salmonumbrella/chatwoot-cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.8/chatwoot-cli_0.1.8_darwin_arm64.tar.gz"
      sha256 "089d6a70feedfec9b02bc1b9f3ef12256d602ba14f8f4d8c4e61e004e42adb13"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.8/chatwoot-cli_0.1.8_darwin_amd64.tar.gz"
      sha256 "1114e2ca1271293ddb63c2b5b6c4b96bb718f0dd6408278a1ada85e3792c4b45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.8/chatwoot-cli_0.1.8_linux_arm64.tar.gz"
      sha256 "4d5ddb066254e411ff6524a8f7f143652068f597ade05807f8683a431059f3f2"
    end
    on_intel do
      url "https://github.com/salmonumbrella/chatwoot-cli/releases/download/v0.1.8/chatwoot-cli_0.1.8_linux_amd64.tar.gz"
      sha256 "b970e6760d4691076636b5a3b7d1bb879aa7786ea97be3938ea1524910633ae5"
    end
  end

  def install
    bin.install "chatwoot"
  end

  test do
    system "#{bin}/chatwoot", "--help"
  end
end
