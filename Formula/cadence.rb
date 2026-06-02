class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.2/cadence-darwin-arm64.tar.gz"
      sha256 "f82efe67a39a77f0ae4c04a6be5b407197784aeb6bffe7e540c1cb2e71c836b4"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.2/cadence-darwin-x64.tar.gz"
      sha256 "80f3829796c966e3a52a18359eb5ebcfecb005528c2d0ab8ff6447b733a4cab4"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
