class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.2.0/pigeon-darwin-arm64.tar.gz"
      sha256 "ede6e2ead5305c3b2f74f4362f7a3c36878dd3365e13ef8e40c1297f54146c22"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.2.0/pigeon-darwin-x64.tar.gz"
      sha256 "df44738da854b7692c2f49431c0d371180cf09701ce61b699e88216f7f172277"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
