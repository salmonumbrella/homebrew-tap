# typed: false
# frozen_string_literal: true

class InstagramCli < Formula
  desc "Agent-friendly CLI for Instagram built on instagrapi"
  homepage "https://github.com/salmonumbrella/instagram-cli"
  url "https://github.com/salmonumbrella/instagram-cli.git",
      tag: "v0.1.0",
      revision: "6b130dcc82499d58ba1ef821b3f75c9d65e19fe2"
  license "MIT"

  depends_on "uv"

  def install
    system "uv", "tool", "install", "--python", "python3", ".", "--force"
    bin.install_symlink Dir["#{Dir.home}/.local/bin/ig"]
  end

  test do
    system bin/"ig", "--help"
  end
end
