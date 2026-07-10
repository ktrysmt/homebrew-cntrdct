class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.14.0/cntrdct-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "79e6ce9f2a39aee617bb533d7b1114b72d5c51cb7019405944385a7af9381c1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.14.0/cntrdct-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f6a84004a6340806987c2fb58324de4ff3fd9aa112ca96bdc18d4054683306e"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.14.0/cntrdct-v0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94056e7e4af4323f6436c7c7a72c889c2747140f0535f8f3b28f6a7035c2b858"
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
