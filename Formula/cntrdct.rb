class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.25/cntrdct-v0.2.0-rc.25-aarch64-apple-darwin.tar.gz"
      sha256 "12d3f1510e3795437c4a42f0f189c30e48cb761f086c02add48d29bcd549063d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.25/cntrdct-v0.2.0-rc.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34587c73ab89b82cf2dc165ce57ac7054e0740047cfa18f431f7ad2b4f764b48"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.25/cntrdct-v0.2.0-rc.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f4e0354ce17e8e3ab7b266cff189634105f1b62849c08b5098738c270d9770b"
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
