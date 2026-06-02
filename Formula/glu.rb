class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and configurable targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.4.1/glu-darwin-arm64.tar.gz"
      sha256 "8fe11fdaa98a19ed272ad11ff95fac1687dfa4517586deff2a8ec6b338b32b30"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.4.1/glu-darwin-x64.tar.gz"
      sha256 "f904008c184b0ba6fa46614aad95f9a8ba957c82c320842d8eec599ed7326dcc"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
