class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.3/tick-darwin-arm64.tar.gz"
      sha256 "d28d4f9907a3e13a88edf1d7f0a7174855536c876960c99469c1770353b7deba"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.3/tick-darwin-x64.tar.gz"
      sha256 "71c0f7367c7bff6aec6d66a7fc24447aac7f270d96e60cc27bee2159a3a1fe73"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
