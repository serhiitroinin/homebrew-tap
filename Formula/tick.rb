class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-arm64.tar.gz"
      sha256 "81530f7ca71e8ca7715906ab1e560618738db1c11de89b887337e6874193b0e6"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.1/tick-darwin-x64.tar.gz"
      sha256 "353a7b582495812c883c00a9666a18bc6d844e38924e69da691da06be30abc9f"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
