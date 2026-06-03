class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.9.0/cntrdct-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "28dfc415d9f31c4ee4a7e4cd046ca918be29ec4f3370cea3d800e34e753c7cfe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.9.0/cntrdct-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cd30f4cd210b9046ff867e0e95e793ff5cb2454c83df1e90866e3cd615a6cfe"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.9.0/cntrdct-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdefea588fd939636e29ce3ecce2b9c36fa65630777262b3dd12c553590bc146"
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
