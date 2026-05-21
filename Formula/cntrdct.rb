class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.1/cntrdct-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "ed00abbbf2c720d39deece085635c72ed1f49e59c7f774f025002cecd26ffdb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.1/cntrdct-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04281c828e4a2a37eb128e6d26390cdb7f04bf21928215dc0bf549555a54d972"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.5.1/cntrdct-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3427266f7142be10128eb3153b92f461bfe4fb49b275d53a8c1c7e75e128da80"
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
