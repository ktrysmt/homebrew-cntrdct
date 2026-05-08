class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.2/cntrdct-v0.2.0-rc.2-aarch64-apple-darwin.tar.gz"
      sha256 "f04af48d51e1e8c7ba4b6fdec57eddd83ad1057a37fcc3c4128f0fc434501fe9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.2/cntrdct-v0.2.0-rc.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4b0dcfcfaba4f1ab186bb5be87bce2f7fa64fe1c945277ca33a5fc3d0f92f05"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.2/cntrdct-v0.2.0-rc.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8e170ae12a4b9185455e400141553a2b899a5b6f66bfd68c0d9ded9756f498f"
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
