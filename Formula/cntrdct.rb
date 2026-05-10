class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.4/cntrdct-v0.2.0-rc.4-aarch64-apple-darwin.tar.gz"
      sha256 "b4ed76aef502a695a48cab4f7be2a1864b88d7485b47a46a6b452ab1cabf3fab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.4/cntrdct-v0.2.0-rc.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ecf46984f6ad1bcbcb8fcbf02856c24c5e55523f70693747fbe0369a81cc477"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.4/cntrdct-v0.2.0-rc.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb76e7db08f7684a8cb8fc95b208694e3c915e1898b432af188c29b27e88b76d"
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
