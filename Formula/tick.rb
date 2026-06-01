class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-arm64.tar.gz"
      sha256 "0a8c00b5d3944014d284764cbdb30cad3d5af4ea7ef9deeb1a6ea0a94d70945f"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-x64.tar.gz"
      sha256 "0b759a5e8e559907e51fa11b65e765045608c69076c9e991bbae155b167f6bea"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
