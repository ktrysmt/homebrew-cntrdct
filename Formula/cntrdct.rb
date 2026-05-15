class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.20/cntrdct-v0.2.0-rc.20-aarch64-apple-darwin.tar.gz"
      sha256 "9abcb58165f0e1a1652911838c5d3be51dd459767b3f77a2d51f8322ac667836"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.20/cntrdct-v0.2.0-rc.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e75b4be0f9df4e28d5eb001d240934eb8dfed900135290ea7cfcb58232a0d834"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.20/cntrdct-v0.2.0-rc.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c0f0931a2c9fcc27acdade4ba8cd2b91e932a5a15d36b0f5b306df979718bc2"
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
