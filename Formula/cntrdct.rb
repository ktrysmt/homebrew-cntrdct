class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.2/cntrdct-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "eee99ba179040e9767d5867205b0ae053f671a0270fc48c440f488e8ff57bda2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.2/cntrdct-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f695dc46da89613fe6520c0a1c94958e7edf7e3ffa333bd75d02cb17c66af572"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.2/cntrdct-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e66230f212ee08bad7fe1f61e2186ac23ec663f1c9b8a28b11325fd86680d77f"
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
