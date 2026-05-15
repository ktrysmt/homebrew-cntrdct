class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.18/cntrdct-v0.2.0-rc.18-aarch64-apple-darwin.tar.gz"
      sha256 "7bfbd1878149baee510d1f59b220357c49bc046c6be6937edd4d07cee9afdea4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.18/cntrdct-v0.2.0-rc.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "140c12f2edf16686b96b42b378ea06a751df0f9336810d96540b071d55394816"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.18/cntrdct-v0.2.0-rc.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a348918fa7fd8cc686cefadc466794ceae30a4996ae0130aaddbd4a5d03722c0"
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
