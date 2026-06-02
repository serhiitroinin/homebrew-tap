class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and configurable targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.3.0/glu-darwin-arm64.tar.gz"
      sha256 "bb88bb266d59825aba28f60593a2c08aaff0352e9b43ab071fcd573247a17de4"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.3.0/glu-darwin-x64.tar.gz"
      sha256 "1a859edc3ec3ee8b760e2c8e9b822b27157f9488eb1fcee2195a08c9e08868d4"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
