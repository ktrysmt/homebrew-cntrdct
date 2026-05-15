class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.22/cntrdct-v0.2.0-rc.22-aarch64-apple-darwin.tar.gz"
      sha256 "7b1494b72b16351b7a3c3ea1d6303a9ab1f60d7e24a8768da34cc587cfd272c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.22/cntrdct-v0.2.0-rc.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe52a23f62d2de94252f7f7df03ffc6f998b3a86b194097f8baa125e5da5d2a9"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.22/cntrdct-v0.2.0-rc.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e5ec7b637f7faeeb64af25ebe073352b30c0f7a74e274ae6b97a8f388d421b8"
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
