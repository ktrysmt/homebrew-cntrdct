class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.27/cntrdct-v0.2.0-rc.27-aarch64-apple-darwin.tar.gz"
      sha256 "3f3dde193056f763179bdb5273fa055f6d007d27f6f4f8dbcb08c8a912ea298d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.27/cntrdct-v0.2.0-rc.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26c71ad4ee738a6e4070306456108c55a348f77f53b82032e1bf3d0cab71cfcf"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.27/cntrdct-v0.2.0-rc.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ce76f7ab1759255ed4cc757561c5f02e4603c79dbf95aaa96bcaf22ec0c0789"
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
