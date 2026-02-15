# typed: false
# frozen_string_literal: true

class LineOfficialCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  url "https://github.com/salmonumbrella/line-official-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "b4a4cee772ffc856387760846f51921e90cdd5bc4b3c2bd5c2ef42c42c029bf9"
  license "MIT"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"lno"), "./cmd/lno"
  end

  test do
    assert_match "lno", shell_output("#{bin}/lno version")
  end
end
