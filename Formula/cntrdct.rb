class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.33/cntrdct-v0.2.0-rc.33-aarch64-apple-darwin.tar.gz"
      sha256 "c40aab77ba9526b1d0fdf88fc6614727fa4f3e299ad8962a775e6e99ce78f7b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.33/cntrdct-v0.2.0-rc.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d84f3e89c67fb4eea3fb3525896995403d4d5b782951d5abef9627b6524fd4c"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.33/cntrdct-v0.2.0-rc.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0041211c1f6b95613a45e0d3239214096bfcbab4a218b3666b2a7aac0adcfad0"
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
