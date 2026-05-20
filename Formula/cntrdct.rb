class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.3/cntrdct-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "d0ca7b4377061cd54997944a1efc769d8471897614e3ec6bd849c8ca1a2bfd5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.3/cntrdct-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4dffe025839e61253e6ff9eab2763da20756ae39156f1259643f347d491febba"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.4.3/cntrdct-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "579b533f5cc9c7dd21dde8e28d9d76ebae3a1829e99319fc0aacd6659dbb21aa"
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
