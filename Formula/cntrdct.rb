class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.6/cntrdct-v0.2.0-rc.6-aarch64-apple-darwin.tar.gz"
      sha256 "e632e9c39333a5fff85c03bb8d385d1392df5d97ede6a12ad1387867119a7c03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.6/cntrdct-v0.2.0-rc.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b587ea649437654f3fcd404eb81fe8572c770cbc2240816b3290059e1bf7d66"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.6/cntrdct-v0.2.0-rc.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "755f898d282bece56f596103457c3efeb2375c9a98e5abad9b050e9037b8a6c9"
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
