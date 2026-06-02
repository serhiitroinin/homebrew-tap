class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.2.0/almanac-darwin-arm64.tar.gz"
      sha256 "f082a8cc983aa1e424c30f5204e7b5f406c8ba97c68ef75ff789eeb44d700dda"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.2.0/almanac-darwin-x64.tar.gz"
      sha256 "e06d3e73ba8a003f7d1f1a4c5096008abf0777a3291011fe0ef1e2e4666ca207"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
