class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-arm64.tar.gz"
      sha256 "de45bf3104980e0dc39d9d6f56955c9a3de2a6736c7b09b8534607d404d159b1"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.1/pigeon-darwin-x64.tar.gz"
      sha256 "81fb2231dad49a24fe630e5db74c2ccc2c58b205c5a1de7a073499c10ae92f36"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
