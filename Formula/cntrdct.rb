class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.15/cntrdct-v0.2.0-rc.15-aarch64-apple-darwin.tar.gz"
      sha256 "3b72da23f5aea4292c8951a42dbd6a874777f0cdabaceed258b12560e9a57552"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.15/cntrdct-v0.2.0-rc.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd8f74a694267bc384f1e43a18efe269d225f1debc52db9fd9716bc26facabdd"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.15/cntrdct-v0.2.0-rc.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dbb866565f53c1666ed7179b2c77d3b90a3a0c91a927b617f28b52bb5dc123f"
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
