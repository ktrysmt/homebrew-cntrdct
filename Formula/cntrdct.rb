class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.9/cntrdct-v0.2.0-rc.9-aarch64-apple-darwin.tar.gz"
      sha256 "a52b497aba544d22ced394ecc0da5c27110e704b4d08ad53d378a01e08120fcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.9/cntrdct-v0.2.0-rc.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff1ff33a1b67f454059adc97bb27b3431b02ade21094857d4ca4bc2a6f729286"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.9/cntrdct-v0.2.0-rc.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43dddb5cad80f31f4a16f58c9371645b509b91de409c9ea1d88f6bee67fd8879"
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
