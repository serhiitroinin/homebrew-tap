class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-arm64.tar.gz"
      sha256 "46c29ec9bc488b340a9424c428631dc2c75f3432c71c9d2d6238708360fe7e92"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-x64.tar.gz"
      sha256 "d3de45f9eb86f8fbf87a63eb81a7043edad0015f0fad20fe0da9310a5fa06b0e"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
