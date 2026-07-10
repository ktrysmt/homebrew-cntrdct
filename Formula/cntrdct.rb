class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.0/cntrdct-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "084b5d6694a27847d3dfa5929d6432325d27091a438054879c8fb40d248c8324"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.0/cntrdct-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "516609559a22765db40bbf553a3c825ba3d497845826d81744df1a2e0b762a95"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.0/cntrdct-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db45eecb38f0f3074cf995500711a3d504aa9a8a042e6b7e00edcfb438fda16d"
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
