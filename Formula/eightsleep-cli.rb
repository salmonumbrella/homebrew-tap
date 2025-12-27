class EightsleepCli < Formula
  desc "CLI for Eight Sleep to control temperature, alarms, and sleep metrics"
  homepage "https://github.com/salmonumbrella/eightsleep-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.1.0/eightsleep-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "d0dd8d11acafb327381b4b739f9f02be28976541a56059edddb28c336696778d"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.1.0/eightsleep-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "915bb33dbcbf254a13e1557e02849c093fbcd6b9456526bb0fa970db002d609f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.1.0/eightsleep-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "f2c98465154d6e6d694f23a378a54d779a06db8218e8b268d6a6a7fa19b61f65"
    end
    on_intel do
      url "https://github.com/salmonumbrella/eightsleep-cli/releases/download/v0.1.0/eightsleep-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "3a4986a9887ce86c111499cf5dd6cb75e0213e9a42046978105c54e7b400fc5c"
    end
  end

  def install
    bin.install "eightsleep"
  end

  test do
    assert_match "eightsleep", shell_output("#{bin}/eightsleep --help")
  end
end
