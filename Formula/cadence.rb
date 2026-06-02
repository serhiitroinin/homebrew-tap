class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.0/cadence-darwin-arm64.tar.gz"
      sha256 "3e538ee3e4fcc352c71ec060ca59abe5f0c838031eb9167dba1f26d06ebb7d84"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.0/cadence-darwin-x64.tar.gz"
      sha256 "b4fca3241007a81da4838780e56328feb066294cb78c93f2b627d78ff4be982c"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
