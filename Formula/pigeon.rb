class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.2/pigeon-darwin-arm64.tar.gz"
      sha256 "987ee178781d58f990943875c7d053fdeacf62cff7a14fbdbbc9cdbb899554ac"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.2/pigeon-darwin-x64.tar.gz"
      sha256 "4fcac74d7bdca5fc6426ba2bc16c22964aa09cddb91184fe5dce7faef2e36369"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
