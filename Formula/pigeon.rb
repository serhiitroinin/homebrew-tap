class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-arm64.tar.gz"
      sha256 "2ad96ef38bb49b2e2ba3efec82110b28f5832c0f308d66f8a0a87c7ff338f575"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-x64.tar.gz"
      sha256 "4a1c11fbc4e6ad2ac431c68b6b07ce1cac4afe618048afe21336c2735c690cce"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
