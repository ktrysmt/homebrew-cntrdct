class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.24/cntrdct-v0.2.0-rc.24-aarch64-apple-darwin.tar.gz"
      sha256 "1b630ed0f5ff6d132475dae00b3e26fe846ea7f0b7d81b03f9a459844a113101"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.24/cntrdct-v0.2.0-rc.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c0fc06b4beadccf64fda9756bc042f81baf74762fa2512f31e926b6a542997b"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.24/cntrdct-v0.2.0-rc.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c1e1ab310e46adbf9c3abba4f1400a1a824765d0bf67883616339205011c757"
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
