class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.2/rescuetime-darwin-arm64.tar.gz"
      sha256 "5a919ebca5d781e6a3154b4fb0c75726325235e2c5b4cb4e3d57abc26edd0bb3"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.2/rescuetime-darwin-x64.tar.gz"
      sha256 "02446a4ff68210952941a3ed39883a611f3bd60d6927d1540a24d0b3e688efd4"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
