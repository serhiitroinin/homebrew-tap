class Sift < Formula
  desc "Usage-efficiency analytics for AI coding-agent sessions (Copilot, Antigravity, Claude Code)"
  homepage "https://github.com/serhiitroinin/sift"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.2/sift-darwin-arm64.tar.gz"
      sha256 "172ff1f10bd602a978ff34e9f8c48b07f6e9c95aeaaf93ed47aab38cfdf4e78d"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.2/sift-darwin-x64.tar.gz"
      sha256 "812ec894afdd565cc6f921ee686f91221e475d6efe3928e2e3c64b9c3ef3669b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.2/sift-linux-arm64.tar.gz"
      sha256 "362d0cf46e1dd555b01614c648ae7f7e9351afd1b48c2a9197b1bfe8f168c29b"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.2/sift-linux-x64.tar.gz"
      sha256 "c0e329a7a953122b34d990e15fb77da339e251078514d62f834cb7e97a2f86fa"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
