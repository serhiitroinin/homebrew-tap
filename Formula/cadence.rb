class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.1.0/cadence-darwin-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.1.0/cadence-darwin-x64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.1.0/cadence-linux-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.1.0/cadence-linux-x64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
