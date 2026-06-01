class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and clinical targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-darwin-arm64.tar.gz"
      sha256 "a5c7a35b2400fc488af7ea8669051d2262864d1705dfc0810103e445f64f707c"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-darwin-x64.tar.gz"
      sha256 "1dea923fc854789278057ccafab4545d32fd6ee7bf7b0944a21ce566024e7b99"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
