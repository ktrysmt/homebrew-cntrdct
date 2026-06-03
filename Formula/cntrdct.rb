class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.1/cntrdct-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "f245496bacfb440e26117ebd92b15500ad960516990868270e7f1ac542a6947e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.1/cntrdct-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cf51c0839de3bbc840823e0f8d86212ec94083bfcb46222506d54231cefe6e3"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.8.1/cntrdct-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbb633facfa8d1131e7f4963bbfad3295885ec5f71c98351e31cce01c46381e0"
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
