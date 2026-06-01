class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-arm64.tar.gz"
      sha256 "c6df6e35c1938abc9041638d09c272b3a219b57b2b7b489991aac7a04f12cea8"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-x64.tar.gz"
      sha256 "3be1481036243799d43095941be500d18369d6d4e76b68e586522486fec99f19"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
