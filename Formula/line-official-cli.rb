class LineOfficialCli < Formula
  desc "CLI for LINE Official Account / Messaging API"
  homepage "https://github.com/salmonumbrella/line-official-cli"
  url "https://github.com/salmonumbrella/line-official-cli/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "a0a8b90d96affe188f1baf2993ba6db7cf3f043fe2a944bd024f7b9c01907aa7"
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
