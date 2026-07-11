class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.1/cntrdct-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ba815b5013a81d2011be8c240e192f57a6a6e8bd9fffb017427c05a14ad5929"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.1/cntrdct-v0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81787da8e107b9e55d9f4bfd81262cc06e07c74140a0945008dc574ee815e688"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.15.1/cntrdct-v0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adb26a69b1f1f05bd58bd4fb02449cc8d7fbabd8aeca2edb06f2a0f470a55d96"
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
