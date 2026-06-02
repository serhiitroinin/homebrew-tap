class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.3/almanac-darwin-arm64.tar.gz"
      sha256 "f3cee59931099fd7b860c51d716f4339c8f339fe269bbd15ddbdb9b8cc9c08fb"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.3/almanac-darwin-x64.tar.gz"
      sha256 "9ea67132540cfeed91e676897dc23eaae22558b391a4d971a4cee038baf94541"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
