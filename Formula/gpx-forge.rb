class GpxForge < Formula
  desc "Build road-snapped GPX routes from waypoints"
  homepage "https://github.com/serhiitroinin/gpx-forge"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/gpx-forge/releases/download/v0.1.0/gpx-forge-darwin-arm64.tar.gz"
      sha256 "af7b7745ec3e4a5f5e592071988dcb9eab85574d6803b9758fffd5a3dc162491"
    end
  end

  def install
    bin.install "gpx-forge"
  end

  test do
    assert_match "gpx-forge", shell_output("#{bin}/gpx-forge --help")
  end
end
