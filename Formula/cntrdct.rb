class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.29/cntrdct-v0.2.0-rc.29-aarch64-apple-darwin.tar.gz"
      sha256 "b88bbbe354459c88d2ab7ba498de5657a929e288f77b2f856591b54d41b7f502"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.29/cntrdct-v0.2.0-rc.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e48a2e65cb25d0be579f47b74498ddaf549500d374149d5a7c337a889564e828"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.29/cntrdct-v0.2.0-rc.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d242e0ffba05905683e176960caf6b88226a51826a054caf2bf07f2166635f8"
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
