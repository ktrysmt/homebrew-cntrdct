class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.1/cntrdct-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "3a5d5d0a816ccdeba1dc691e886c36c2de62942b9a133d51495696ffffa6139c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.1/cntrdct-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd8b02a94b4e7c1afb44339dca55e9360540ea5f8cc1506063ee88657c2eaeb3"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.1/cntrdct-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90809cf12629d1eac1ecbf8a448d0ef47f48327f338174940a2e0433334a781f"
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
