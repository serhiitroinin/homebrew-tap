class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-arm64.tar.gz"
      sha256 "ee9c23d2768a5938af1146bd6230ee65a30e26dacc8c0a943f84ff1b9ccd7122"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-x64.tar.gz"
      sha256 "6c503423744f5164b3f0e1e30bcb493e77d2ce3e08e70cf7fa24cc990c65fcbf"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
