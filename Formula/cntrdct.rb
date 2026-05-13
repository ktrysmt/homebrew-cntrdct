class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.13/cntrdct-v0.2.0-rc.13-aarch64-apple-darwin.tar.gz"
      sha256 "2f7c9cc0db72914c638ffdfe997b8225847c5da4bbfa45d9b07960254b369f01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.13/cntrdct-v0.2.0-rc.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7272c29c95ee15c41aa0fc1578dfc3cd389539a18d90b3fafe605b3aa457b56a"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.13/cntrdct-v0.2.0-rc.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e703d228f5c5098103c7f7c4f3f82df27e28312171d4300c2ae28764613dea00"
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
