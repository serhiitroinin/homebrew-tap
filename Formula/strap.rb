class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-arm64.tar.gz"
      sha256 "cc29537cae30f2da17eb0515bdd943593d20fa1763a4a9aeb6a6329d7173da7e"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-x64.tar.gz"
      sha256 "6d25c2c6ac10f475189cb32bbffe90ecdf2ed9dd3700ab3ed042cb86c8881628"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
