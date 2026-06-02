class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.3/rescuetime-darwin-arm64.tar.gz"
      sha256 "058c23edff8fcf2852100e44ffc586b13bc305c247ffebc417f3055c36c6d4df"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.3/rescuetime-darwin-x64.tar.gz"
      sha256 "f83f97b1b180ad1dded9f60fe9af5e5ac3eef0ae53941f4b406f0345fcb65052"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
