class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.3.0/cntrdct-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b87f33b24d047885a9027129dd99b1a8d848564b5a2bba521d534103f9bc5ce2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.3.0/cntrdct-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f80d051a0cc87a88a1aa60f27385dbdc9b3a814e9d9283561a348a1e8a06bc19"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.3.0/cntrdct-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a06375cddf23e83a3ca456322406e3d33d67cb5ca69eb9ebc3d8fd937fd12089"
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
