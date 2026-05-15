class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.23/cntrdct-v0.2.0-rc.23-aarch64-apple-darwin.tar.gz"
      sha256 "8e439c89e979997ac26dde996aa31887d9067c28d4b7f6de22e665e6369c529c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.23/cntrdct-v0.2.0-rc.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd43f7d3af13a060c7112a4cee89dfbbcde928a53d57643116294ddd7bbe91f4"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.23/cntrdct-v0.2.0-rc.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b00ce223716c28f5eeb1908db09d6c315940c1bc14c4618e1c76261666d376af"
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
