class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.31/cntrdct-v0.2.0-rc.31-aarch64-apple-darwin.tar.gz"
      sha256 "dbbe6d500da5d0e2950fc3e5362dd1506087370114d7341757081193868dab4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.31/cntrdct-v0.2.0-rc.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28b8f16b3e9433443ec1fbb230b76395ae5918ff80cf12f3fdbc0862c3d3e027"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.31/cntrdct-v0.2.0-rc.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec765b8119b6b9235ad15294b84f1370e6f847dcb04412103073a25743a9a4f7"
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
