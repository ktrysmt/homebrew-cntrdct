class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.17/cntrdct-v0.2.0-rc.17-aarch64-apple-darwin.tar.gz"
      sha256 "b2feea77f1bc38008c162e7300ac97deb2fa721d2642fb0c556e2214a225083d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.17/cntrdct-v0.2.0-rc.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e53ba9f3dab3939ffa4a8ca7c1d4ec765213b6821ad0cb41958fea49eef077f"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.17/cntrdct-v0.2.0-rc.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0603f3d9b9970211370e84751d34c5de07e13793936c11b5913711fab77872a8"
    end
  end

  def install
    bin.install "cntrdct"
    bin.install "cargo-cntrdct"
  end

  test do
    system bin/"cntrdct", "--help"
  end
end
