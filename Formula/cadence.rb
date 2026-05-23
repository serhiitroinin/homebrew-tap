class Cadence < Formula
  desc "Garmin Connect CLI — training readiness, sleep, HRV, body battery, activities"
  homepage "https://github.com/serhiitroinin/cadence"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-arm64.tar.gz"
      sha256 "a27c991e9d0f4c1e02d4d770e65aa96401a76b668ff1219b80568c18a1015d40"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-darwin-x64.tar.gz"
      sha256 "2cc08eb3475c3ac112be2460a47d94b2918a03c7f1a231bbd3d1b5c846483fca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-linux-arm64.tar.gz"
      sha256 "d0528438e09fcbb5318296c205c36c8bb36c7dc252caa6a495f3d9a89a4175a3"
    else
      url "https://github.com/serhiitroinin/cadence/releases/download/v0.2.0/cadence-linux-x64.tar.gz"
      sha256 "f44d93e108ffc739c51af0b5d44d77c059f52201a67a731fb17f4b8a6a291ea7"
    end
  end

  def install
    bin.install "cadence"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadence --version")
  end
end
