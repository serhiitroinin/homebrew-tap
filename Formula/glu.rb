class Glu < Formula
  desc "FreeStyle Libre 3 CGM data CLI — glucose, TIR, and clinical targets"
  homepage "https://github.com/serhiitroinin/glu"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-darwin-arm64.tar.gz"
      sha256 "aceab0a466efcf5ac629d36f6fa22fd77ecc0eda16027fd854afb3ea39d7b262"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-darwin-x64.tar.gz"
      sha256 "9c451e54bbd5565b5968c8a2446c9f28698c303b7442d2dbe6fb489ae796b6e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-linux-arm64.tar.gz"
      sha256 "c1e12b2d0267bfa9438288304a8737d949ad995689ccc51701c195491b439789"
    else
      url "https://github.com/serhiitroinin/glu/releases/download/v0.2.0/glu-linux-x64.tar.gz"
      sha256 "db39189d2083bd94f8a9e07d9861ef16482ead04fcc832e081c712105e2d3186"
    end
  end

  def install
    bin.install "glu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glu --version")
  end
end
