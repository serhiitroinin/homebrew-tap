class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and configurable targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.5.0/glu-darwin-arm64.tar.gz"
      sha256 "e72149cd3a34f42b3f8b095af7bc9cfb0295e4fd44d300bacfb80e02226ca695"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.5.0/glu-darwin-x64.tar.gz"
      sha256 "c1091d58d8f5c59a2cae7391a117c1b2106acc374e57c2a0b4d08f36c644bd96"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
