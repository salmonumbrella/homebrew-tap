# typed: false
# frozen_string_literal: true

class LineOfficialCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  url "https://github.com/salmonumbrella/line-official-cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "86c870b88a92b03116fa7f0cbb3b32286825286222d715d056f7495b7ea6201b"
  license "MIT"
  depends_on "go" => :build

  def install
    pkg = "github.com/salmonumbrella/line-official-cli/internal/cmd"
    ldflags = "-s -w -X #{pkg}.version=#{version} -X #{pkg}.date=#{time.iso8601}"
    system "go", "build", "-trimpath", "-ldflags=#{ldflags}", "-o", bin/"lno", "./cmd/lno"
  end

  test do
    assert_match "lno", shell_output("#{bin}/lno version")
  end
end
