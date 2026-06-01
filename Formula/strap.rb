class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-arm64.tar.gz"
      sha256 "d45d05c0d9e3107001a6c1167e01d53a12758d04db423aa4a057752ecaa1de5d"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-x64.tar.gz"
      sha256 "35e3b57872debcb28b938856053fa191ea717df837f8ab360605ac72cdb44dd7"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
