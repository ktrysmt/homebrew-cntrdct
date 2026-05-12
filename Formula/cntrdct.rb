class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.8/cntrdct-v0.2.0-rc.8-aarch64-apple-darwin.tar.gz"
      sha256 "8e933a5c311a228f38625f10d6487b69d57bfb00bf4c5a740b21077d91064f63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.8/cntrdct-v0.2.0-rc.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4380f8757eba7d0795fa645ff3addacd84d61953c464cb0dbb8c416381b3f72"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.8/cntrdct-v0.2.0-rc.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d09e6eae2ad71a944f53e45d032493ee61fde8f2a17ed734fdf69ad76cbf4c1"
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
