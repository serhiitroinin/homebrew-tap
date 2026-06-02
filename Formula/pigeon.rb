class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.2.1/pigeon-darwin-arm64.tar.gz"
      sha256 "954605649bda82b67b5dd0e5f03cdd563f54acc6fa9cabab81d67a0ae7da2e36"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.2.1/pigeon-darwin-x64.tar.gz"
      sha256 "180021f0789d794f6492f18be6056d6560837547710f899bb14a790854b6a3f9"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
