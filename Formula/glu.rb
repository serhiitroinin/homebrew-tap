class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and configurable targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.4.0/glu-darwin-arm64.tar.gz"
      sha256 "fd36a06e6a321f3319647d280eb5c4dfc86372d647a81639ffa85f09a1df41f4"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.4.0/glu-darwin-x64.tar.gz"
      sha256 "7d660f72609c8fb706d276948d5cdb7f10625eb4562cd961078793d60f466bc3"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
