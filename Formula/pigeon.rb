class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.3/pigeon-darwin-arm64.tar.gz"
      sha256 "b7448e6b24836769c15ac166f666917d225ad94e6546588e592cb3a4658bf893"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.3/pigeon-darwin-x64.tar.gz"
      sha256 "3a0302ebf265ef990470f560c28cd49be09cbf433bac01ecc99fb783a8565840"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
