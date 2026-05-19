class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.0/cntrdct-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "53fd4f6e39b8ef165263183243b179921af4e938d73c2aa6778159f8b9ce51f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.0/cntrdct-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0386194680959cc2e1177e34cc90a3031bab1e9bd8c830e8139dd71cdf58462d"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.0/cntrdct-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bfaf80f77cb796f3bf8ad4997459ca68410512ba063d312f5403961bb69a5e8b"
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
