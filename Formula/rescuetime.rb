class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-arm64.tar.gz"
      sha256 "60dc811ce2dfe847d8ce8d2cb234eef0a8b98c38ae1ee5eec77ed6de3fa01acd"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.1.1/rescuetime-darwin-x64.tar.gz"
      sha256 "2e9cd21e2a65a081568bc93f17f6e0d5a0e7b2f4a38fa89fd44fa7f84c3c1fd3"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
