class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.12.1/cntrdct-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "38dc172251db33af36a9f1bd5b10f95ccde6b475c6a749ba45a2cbf261252e5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.12.1/cntrdct-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a09077abc75f3af668c8ae435457eb31027fe7487018240ab25c86e0954831e"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.12.1/cntrdct-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a0526ec07db1867c4d26e4289c182703618a16752c61f587cdf1f93806bdc1c"
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
