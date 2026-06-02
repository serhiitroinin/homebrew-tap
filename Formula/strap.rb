class Strap < Formula
  desc "WHOOP CLI — recovery, strain, sleep, workouts, cycles from your shell"
  homepage "https://github.com/serhiitroinin/strap"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.1/strap-darwin-arm64.tar.gz"
      sha256 "774692d5a8bca881e7052a78c9b9a84057d453faa7ba165bba354cbb90c5ab7d"
    else
      url "https://github.com/serhiitroinin/strap/releases/download/v0.2.1/strap-darwin-x64.tar.gz"
      sha256 "89a5f4246977a68625603f79457b82489e5b78e77b5601fa84accaea27c26859"
    end
  end

  def install
    bin.install "strap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strap --version")
  end
end
