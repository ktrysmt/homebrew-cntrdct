class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.35/cntrdct-v0.2.0-rc.35-aarch64-apple-darwin.tar.gz"
      sha256 "194b2b42daa4c154ba55f437ccc5e09f8be4e4642329b6fe8649e1c7f0710dd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.35/cntrdct-v0.2.0-rc.35-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0610d2be2ab471d39529c400da4e5cb4c1c51fb85439693ae20ccdecd34ed71a"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.35/cntrdct-v0.2.0-rc.35-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "688b5ade942e6fd2c4bb5742c74f65186368eee303eec001d7e2ffaf82609478"
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
