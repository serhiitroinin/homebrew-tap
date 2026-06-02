class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and personal targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.1/glu-darwin-arm64.tar.gz"
      sha256 "dfcc44aa845b122b1011c4883ebabe59c4c8e917b6775ee2545701e4272830c0"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.1/glu-darwin-x64.tar.gz"
      sha256 "bbab4f0b2da42e70c0a8641c9884d7ec890bdfdd72a6feaa5a291462432aaac0"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
