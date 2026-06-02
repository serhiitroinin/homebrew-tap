class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.3.0/strap-darwin-arm64.tar.gz"
      sha256 "42d5c101a7d4647d4e4ee492411b0a9e03240f0bb92625f04dd04304a17d71c6"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.3.0/strap-darwin-x64.tar.gz"
      sha256 "57b56425904abc7de0d07c67f070dea2c1bdf4f3923cf897c66a41a3edc19688"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
