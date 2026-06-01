class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-arm64.tar.gz"
      sha256 "9d36fa3a27e3fc2ff01076aeb7cca87736056f8845b71ffbd6d994f79a8a3658"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-x64.tar.gz"
      sha256 "6a8b9f7940d76d4ee39c83b8d6785c5bdf0fb3c09bbe4ae606bc673b9329ff28"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
