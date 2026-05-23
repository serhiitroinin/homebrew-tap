class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-arm64.tar.gz"
      sha256 "87cf0c6edbdaec2808c6bc9725ffc98d04fa778b5fa8fa1d9c93d86973069477"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-darwin-x64.tar.gz"
      sha256 "5ff288a38033fc817d20877336152780e6b5bb3d163af3a758104641759649e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-linux-arm64.tar.gz"
      sha256 "d94a078fdba8b528b667c984d61d6263f4470131fb25365c7bfa5c38bdf8eca3"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.0/strap-linux-x64.tar.gz"
      sha256 "2080911976c796537f04f38ba2d3d7d63d762327057caaa3d5543cabcd644e76"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
