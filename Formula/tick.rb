class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-arm64.tar.gz"
      sha256 "4d34f9ec526b2f664acd520aa9ef4794d22d13f373fa0c0d655a8fa7a4f8fa28"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-x64.tar.gz"
      sha256 "8c9d5097cd38d778b27adb3676d9d8a015abbd5f2238c0a284df01c6fbdccdd4"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
