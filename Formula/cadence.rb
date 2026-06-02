class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.1/cadence-darwin-arm64.tar.gz"
      sha256 "e1a1b18991c2ec301e3173cb2e3aea4ee8d2f844ccf39a2aece509402dd95a74"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.1/cadence-darwin-x64.tar.gz"
      sha256 "ed9433b8a3b705d9f524ec044a256d7334490b7377e9a74d7ab84b3f5db25951"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
