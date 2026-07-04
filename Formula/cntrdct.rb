class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.13.1/cntrdct-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "9f29fb849e7b12a0b133e979e8e591e853d0f16ec9a2659d060f28468b328c06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.13.1/cntrdct-v0.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b16d7d6d0fd18aa9f442fa57f033c7fe98090513a7766caa896f8bfec795ade8"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.13.1/cntrdct-v0.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfb917325c2fa27fcf68ff81417456ce53d7dbc161f4787e7ba5f19833dccd63"
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
