class Pigeon < Formula
  desc "Email CLI for Gmail and Fastmail — multi-account inbox from your shell"
  homepage "https://github.com/serhiitroinin/pigeon"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.0/pigeon-darwin-arm64.tar.gz"
      sha256 "dfffbadc9650a7b45760ed443f6c1b5f489484a7546c3f07e566dc8a7aeac444"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.0/pigeon-darwin-x64.tar.gz"
      sha256 "342f7aff20025812235b5e5d6d4f6411112cb98e398bac15c75b05c940acab8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.0/pigeon-linux-arm64.tar.gz"
      sha256 "755374e70b8e71bd3050099df61e5f275241002cdf8c9731f8b6dc6d50af8e11"
    else
      url "https://github.com/serhiitroinin/pigeon/releases/download/v0.1.0/pigeon-linux-x64.tar.gz"
      sha256 "2bfe7c53907af2c18c34f776b00f929e32f2b8b0fd1975a396652e51f2db31d0"
    end
  end

  def install
    bin.install "pigeon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pigeon --version")
  end
end
