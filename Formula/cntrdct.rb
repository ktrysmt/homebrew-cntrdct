class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.11/cntrdct-v0.2.0-rc.11-aarch64-apple-darwin.tar.gz"
      sha256 "43ceef546bdab4790ff58711e1e57efc114406afa52b754a4cd92edff440fd83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.11/cntrdct-v0.2.0-rc.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1a9c2c8089df50471a89699d8f21b238871ffb06d3d1e6727c240162301fd78"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.11/cntrdct-v0.2.0-rc.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c374d7f2854d621b190365a00f5c5946899f72b674965826406abbeb973f85ae"
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
