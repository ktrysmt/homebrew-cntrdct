class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.32/cntrdct-v0.2.0-rc.32-aarch64-apple-darwin.tar.gz"
      sha256 "bd46d366c80b9162dc183276758da89ba963950cf33d14d0086e1d70509e9a73"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.32/cntrdct-v0.2.0-rc.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c38b411fb4f1601dfcc65c1493d2a737e53a7d04c66b2bea034e2e125f4420d0"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.32/cntrdct-v0.2.0-rc.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f125e9e51fb79c30cfac899c081db9502882a02ac1e110e052a7b8bc8381861c"
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
