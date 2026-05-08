class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.3/cntrdct-v0.2.0-rc.3-aarch64-apple-darwin.tar.gz"
      sha256 "10aed2217d10dd55fa1a61f1c769cc9efba3b604a97567e9cdc6c0f8f838e2ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.3/cntrdct-v0.2.0-rc.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c47aaeded4560c7abd91536b2d2791db7c208067033e58ef688e73ae3a73f495"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.3/cntrdct-v0.2.0-rc.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10f1f31352862a8f155eb21ea6731204249abc181128d52f9a239701a396f6b0"
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
