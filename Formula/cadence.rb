class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.1/cadence-darwin-arm64.tar.gz"
      sha256 "196e3c0cafe85e0f8999682191e1cb43770819bdb7a15bcba18002b81f573d9a"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.3.1/cadence-darwin-x64.tar.gz"
      sha256 "f0d23308e1df0e54986fd2d0d6c5b57504e3137eaf06bd93389c589d208c4ba3"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
