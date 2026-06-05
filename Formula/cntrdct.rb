class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.11.0/cntrdct-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "66d1ad113131687c291d408de2566005bf54284fdc3e55470c90f67f09873f91"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.11.0/cntrdct-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2933d1ef62e7239d8453bca863a5b14123d9208b070199b9305340aab4c8f47f"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.11.0/cntrdct-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "549e6aa6d9dfa543c36ab089e54fe1b67f85071ee4fd6984ce63250b3853a2d1"
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
