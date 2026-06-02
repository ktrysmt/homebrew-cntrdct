class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.0/cntrdct-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "67b28d3dc44b8c7f5c0e19e061261a12aa19ad4304ffbceb6fc2cad8c96fa55f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.0/cntrdct-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27dc20077ff7f967b2f7509d82ade02741d9ad7697c27204cf5e058a76c95e83"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.0/cntrdct-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db95501878cfaf152e439d988c2dcf31a3bc86ff9e67a491ab4f59ccd830a58d"
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
