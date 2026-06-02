class Rescuetime < Formula
  desc "RescueTime productivity data CLI — pulse, categories, activities, focus"
  homepage "https://github.com/serhiitroinin/rescuetime"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.2.0/rescuetime-darwin-arm64.tar.gz"
      sha256 "68e5e1b96cdfedb370df1699db30e103d232dd628b2f56191271d4465b2e67e5"
    else
      url "https://github.com/serhiitroinin/rescuetime/releases/download/v0.2.0/rescuetime-darwin-x64.tar.gz"
      sha256 "d063461a023bb767fdc77c79955f414bf90773bb44eba34dc82673ae806c95db"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
