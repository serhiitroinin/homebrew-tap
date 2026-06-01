class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-arm64.tar.gz"
      sha256 "821abd4267e3e8e7349e8c44171721018f7725be6716a357484d74cf0881118c"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-x64.tar.gz"
      sha256 "ef8a57645c12755d90a73c432c8ec0842ba3173d3918854dc4360df15b9e07fb"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
