class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.2.1/tick-darwin-arm64.tar.gz"
      sha256 "774e52e8485bca60b8c3d7cae6443c5a662b18d1471ff66ef2b789cff321d3a2"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.2.1/tick-darwin-x64.tar.gz"
      sha256 "f356cbf996789d7d2d85d3dd42064deb12c4ccd3a42b7eec43603478ec34f1a6"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
