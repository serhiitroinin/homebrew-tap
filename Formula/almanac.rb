class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.2.1/almanac-darwin-arm64.tar.gz"
      sha256 "4c59df69af4ce26a61d7006b6f323b2bcd2fd05312a890ab9c06694952c8fa91"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.2.1/almanac-darwin-x64.tar.gz"
      sha256 "4038ba10864466bf86156ba772047b89b1f3a78130a1d00ba1e44036ef7d8295"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
