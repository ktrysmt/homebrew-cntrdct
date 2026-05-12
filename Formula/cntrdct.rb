class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.10/cntrdct-v0.2.0-rc.10-aarch64-apple-darwin.tar.gz"
      sha256 "dac46e184124118b3c5f10a3224cfc303b91d0221bda8cb7bdb002a89ce83365"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.10/cntrdct-v0.2.0-rc.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59f87dbacdbd554a844c608636af5e90f6d54b2f8e910e6de8212c9b3242c5f6"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.10/cntrdct-v0.2.0-rc.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26c40c439cbe5085c3af6e92b4a4f5ef91875f40402495dfa96434f70bf9bf19"
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
