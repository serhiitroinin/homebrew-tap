class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.0/tick-darwin-arm64.tar.gz"
      sha256 "688909fc064282304114e94448b67a954c1568b4bbd5a7dcf41bb1736311666a"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.0/tick-darwin-x64.tar.gz"
      sha256 "0a911e48166aa6e04cbffc838dbae9b911ce040fea1d0b8c89fd3956d59e2d4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.0/tick-linux-arm64.tar.gz"
      sha256 "74c57db97f08dbb4c566c326f1e27b9536adfe89348fa390bbffa506cf826101"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.0/tick-linux-x64.tar.gz"
      sha256 "984f3da621f3fb816962903261d141404e19d3cdf2f99370cc6654582836dd8c"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
