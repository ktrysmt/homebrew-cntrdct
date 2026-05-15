class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.19/cntrdct-v0.2.0-rc.19-aarch64-apple-darwin.tar.gz"
      sha256 "c489a420a7e7d5e76b455e4e0210b3cad259cf4489d5d757334fff4be9e077f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.19/cntrdct-v0.2.0-rc.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50a25e46b2633cd4ffb9e5730f5ce667fe7b015005f53a53dc2673ebe4699d6b"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.19/cntrdct-v0.2.0-rc.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23b61983381f5d4d55a65473ca40d0adc9d442e7868846af6554bde7fbe6ae9b"
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
