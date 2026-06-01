class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-arm64.tar.gz"
      sha256 "316063f4a579a2f3f29ee0319d6a03d8d1cbfc6fb8c33a2b98b54d69db96269f"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-x64.tar.gz"
      sha256 "ec395d230502afd33614a15148984816fcd62114b2a31904b7bae45ecf6b52bd"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
