class Almanac < Formula
  desc "Google Calendar CLI — multi-account agenda, events, scheduling from your shell"
  homepage "https://github.com/serhiitroinin/almanac"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.0/almanac-darwin-arm64.tar.gz"
      sha256 "854021a95c82405d1c12de298d030b863cbd59ed948c333a050f4d4aade84a09"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.0/almanac-darwin-x64.tar.gz"
      sha256 "03bed5477f9204123711d0efa5a3532c16095bd4e167944ac283b77698b24472"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.0/almanac-linux-arm64.tar.gz"
      sha256 "46c7ed308291cab05b8b7973be541d5bd91960b38569aa446c472962ef9cbe4a"
    else
      url "https://github.com/serhiitroinin/almanac/releases/download/v0.1.0/almanac-linux-x64.tar.gz"
      sha256 "c62851b155287bc58ceb3b5fa2956bc506ae2b3a02381e42027b97fb2480243b"
    end
  end

  def install
    bin.install "almanac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/almanac --version")
  end
end
