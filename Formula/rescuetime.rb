class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.0/rescuetime-darwin-arm64.tar.gz"
      sha256 "ea3fe9c7836725908838319f61a9d38f1d2eaff447839ee590422254a502f45c"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.0/rescuetime-darwin-x64.tar.gz"
      sha256 "654c81a4de121c6d566398254ec4e9aec57c708d3459d8b191ceae61c2ffc8c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.0/rescuetime-linux-arm64.tar.gz"
      sha256 "b4cc27ab159ba6ae71e432dac1f1fc09a5c206bce321e506726ff50cd51458fa"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.0/rescuetime-linux-x64.tar.gz"
      sha256 "f51282b2e5688807eb25d56fe39df82d743f33069f1d906b94f03a5075d1619d"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
