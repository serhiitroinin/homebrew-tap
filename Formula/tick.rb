class Tick < Formula
  desc "Todoist CLI — tasks, projects, labels, sections from your shell"
  homepage "https://github.com/serhiitroinin/tick"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.2/tick-darwin-arm64.tar.gz"
      sha256 "21012d34ec934edbaa4e34050e13edf8611658bd9037c84086c05ba2fb12c787"
    else
      url "https://github.com/serhiitroinin/tick/releases/download/v0.1.2/tick-darwin-x64.tar.gz"
      sha256 "98096fa40d20c824fa8d92ecc7a80f596ca359e88c2a363ee572b090df09e054"
    end
  end

  def install
    bin.install "tick"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tick --version")
  end
end
