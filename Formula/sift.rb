class Sift < Formula
  desc "Usage-efficiency analytics for AI coding-agent sessions (Copilot, Antigravity, Claude Code)"
  homepage "https://github.com/serhiitroinin/sift"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.0/sift-darwin-arm64.tar.gz"
      sha256 "8533530f37a7e89c05532bf6fe974b8d57558ce6defb89790a8cdb40b638acd8"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.0/sift-darwin-x64.tar.gz"
      sha256 "c47c8652c992a238528ebeb5616c2d1a64835d84c0093f1e34eb8fb6a1832df6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.0/sift-linux-arm64.tar.gz"
      sha256 "d8e974613cddf1dfb9beff66bb7b708b0b48fe545686982a66454387a9c5d0c4"
    else
      url "https://github.com/serhiitroinin/sift/releases/download/v0.1.0/sift-linux-x64.tar.gz"
      sha256 "04e81c90c5385cb2bdc7b1ba4fba0b2b29f9f83ce6441ee6e7e8546c874df7fc"
    end
  end

  def install
    bin.install "sift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sift --version")
  end
end
