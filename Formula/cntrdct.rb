class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.0/cntrdct-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "16c005bf4c5f894650217e4a115b1fb1ccb7841db3eecaa29f63e4b931dd4498"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.0/cntrdct-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5631a37b3a8216cd8d10cc5ad8623f818662b52555468ebe8c3dc4c154d036f"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.0/cntrdct-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0580f64704556c4f1b039aa559e8d6e26acc510e6d3a12c9581f8902b3aa540b"
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
