class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-arm64.tar.gz"
      sha256 "34d36c82f5742e2092e5b301e65db3b09759f3c93aad992a1d05990b5aeafa76"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-x64.tar.gz"
      sha256 "688d71c25e246caf5d99e0c6eb1e1f0e11dd68aa3038486db44987d35721b082"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
