class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.2.0/tick-darwin-arm64.tar.gz"
      sha256 "8f2f71c4b2d9cea48b7cc393d5d1072085a3b712119d9e9fa7fa620bfbe1a576"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.2.0/tick-darwin-x64.tar.gz"
      sha256 "2465256d172366fa85495c5e586d47754e572464d563668cd7379ea49568e69e"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
