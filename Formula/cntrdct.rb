class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.34/cntrdct-v0.2.0-rc.34-aarch64-apple-darwin.tar.gz"
      sha256 "f654b469b88a86e4882075e122750cf51032d842a1294c17fc5edc4bfbf6346b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.34/cntrdct-v0.2.0-rc.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5b696bf13a926c1d4c0615ee5ecd01f93d94e353731427358a84c8093c8a2cd"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.34/cntrdct-v0.2.0-rc.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0eff3f8e1a57098a507c0b4936e49ccc2bc63dfc308a406d3332d76e2097a22e"
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
