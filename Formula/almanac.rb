class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-arm64.tar.gz"
      sha256 "9ccc500aedbb146ae525fb6e3b3e01222204dd07da9fbe69b028cc332ba0d794"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.1/almanac-darwin-x64.tar.gz"
      sha256 "bbd5129d38828170bb9b97675b9a260238ac6be5528522af0e906f23497625f2"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
