class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.3.1/strap-darwin-arm64.tar.gz"
      sha256 "c1f6375a82cac2d4d0185eada3d0dc7cc80aa806785f65618db4679d14ce3df6"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.3.1/strap-darwin-x64.tar.gz"
      sha256 "8cd9e018d5783d821a06eba7585591ad6dd56c67e3b728da10f5dc05c3d9b581"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
