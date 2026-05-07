class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-beta.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-beta.1/cntrdct-v0.2.0-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "a2ced1470ab6b137232e6fdd9d012f60ad1976d5f46979207cdd394bcdf7e514"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-beta.1/cntrdct-v0.2.0-beta.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f60a57a3427b258ce3f6ea9dca863db7a8fcc6674f33c6413a3d96363354be55"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-beta.1/cntrdct-v0.2.0-beta.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff40b6f211cfa2b9682390c7a46b0ce3a1a59c8663339bd743c62e1c21ba2593"
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
