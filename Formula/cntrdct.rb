class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.1/cntrdct-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "dffd587bcfb1ac3d7c9858de1fd612cad729ae2ce5f3a63d9c12b52333275b25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.1/cntrdct-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e5c3cb9b88030350ebd354ccdf3812c1f2230dc687fd0f93337e1e2335f3ad0"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.10.1/cntrdct-v0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3960196af126c5c7b101220bacb5c30e8abff4bdbb6540b6bdab4d7ad7ec75f"
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
