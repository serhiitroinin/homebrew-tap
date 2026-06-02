class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.2.1/rescuetime-darwin-arm64.tar.gz"
      sha256 "d781b173075cc42c9356ac5ec557ad6354426d659f9fde20461175d5603857ec"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.2.1/rescuetime-darwin-x64.tar.gz"
      sha256 "dcff1218224828f34fecf1085cec5b39d1dc91575794d3569c7ccfb120e4c6c6"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
