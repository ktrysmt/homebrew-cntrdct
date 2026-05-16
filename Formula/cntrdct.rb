class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.26/cntrdct-v0.2.0-rc.26-aarch64-apple-darwin.tar.gz"
      sha256 "ea70be719d19dc5737baeb37837c863448c7ce1f504056d4a4a64951f69b382b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.26/cntrdct-v0.2.0-rc.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5eecdbfd8817e2187ac23a23ad947e59e5dadf939246d675b43ff0ec3af2ece3"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.26/cntrdct-v0.2.0-rc.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "261465d57911ec85212b11a11ea99b6ac63c590a2578c33328886a7dea4be73f"
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
