class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.2/almanac-darwin-arm64.tar.gz"
      sha256 "0c02162b75d6b949df87ef8cf33779bb108ba7fad7d6157d96f1a5d581ae526a"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.2/almanac-darwin-x64.tar.gz"
      sha256 "d23c02422db2632c9a347cb5bbb39bba6456d49a5e664b4c76b1ddcbd86e7b3d"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
