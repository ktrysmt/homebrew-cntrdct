class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.6.0/cntrdct-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e1bdae9a20f0ddd9b95f8c171afc2985b02170a924d4ae9a884f726906aa586"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.6.0/cntrdct-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c15264f1f20d1704bebcb6558bd88d64c3cda223a9b8a9c7362ca3a1d9bd489"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.6.0/cntrdct-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "944f1ddf39fd160e7b3b13455804403c5ed85324cd9752624cd11fae78f4e369"
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
