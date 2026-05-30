class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.7.0/cntrdct-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "95273d70d3f6191bf5895e8d4bbea2466d6adb3bbb0a40a357f52f6d97831a29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.7.0/cntrdct-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e081fb00e1f251feb1decb49c4de0d1c41b070dec3b0dc7af3c04c14b1a85dc6"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.7.0/cntrdct-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abd7362b943f00ef1fe9bbc7aa55f5703d6bad21cc8b15897a1c2a6e0b6c1190"
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
