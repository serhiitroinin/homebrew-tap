class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and clinical targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.1.0/glu-darwin-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.1.0/glu-darwin-x64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.1.0/glu-linux-arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.1.0/glu-linux-x64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
