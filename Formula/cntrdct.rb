class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.2/cntrdct-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "d68b1b542db32d7a42a280242b6d10c0f35d589e9505de1880f249a84ad013c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.2/cntrdct-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db51c09cf62eb41d2c469d79858adb577b1704e8ffb182f9e4403eaa0f4db5e7"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.2/cntrdct-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a00fdc59739751e76fef7bb14a4837ce83ba075feab6fda4df1423217103d7d9"
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
