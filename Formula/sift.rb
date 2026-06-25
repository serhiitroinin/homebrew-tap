class Sift < Formula
  desc "Usage-efficiency analytics for AI coding-agent sessions (Copilot, Antigravity, Claude Code)"
  homepage "https://github.com/serhiitroinin/sift"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.1/sift-darwin-arm64.tar.gz"
      sha256 "bebcdf9750800dd3a0438b21c585108e6276e509d66a380a4b9541f73435329c"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.1/sift-darwin-x64.tar.gz"
      sha256 "e411fe5e6c78f20bfb86b25f22f3883cb42621ea2213a5f2a29e935a6c58dcb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.1/sift-linux-arm64.tar.gz"
      sha256 "41b11bde48c2665f103561c058856fb78eb43bd62f995137b4ad26d63f0bac30"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.1/sift-linux-x64.tar.gz"
      sha256 "bf9d3beb123ebe1670d3362f53374bdaacaac2bc1fc7225a142d48c0974133c5"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
