class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.7/cntrdct-v0.2.0-rc.7-aarch64-apple-darwin.tar.gz"
      sha256 "defff2c959424f44fb79daabd2994b16238e9168842fffe24d512680f8a737d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.7/cntrdct-v0.2.0-rc.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "944c32c8617da32b9dd4525ecfd734c32b95fbc7f8bc482439576204da8a0de2"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.7/cntrdct-v0.2.0-rc.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb779a5ddd6f6a4c9d56621c013139f0a08cce3a3055b4508d001dc02632fe72"
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
