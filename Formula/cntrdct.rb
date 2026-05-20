class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.0/cntrdct-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0b0eef96a06bcfe0541955d70a26b8892a1399ed6b0eb9d25fe946aab9cada2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.0/cntrdct-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66a0e0122287aff1125da3adb3f95d621022f7fa8104997199867f01441fa72f"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.0/cntrdct-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78ac675231f38a82f91b607161f50bf3817457278680fa7e9e7ffdfe1ba5678c"
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
