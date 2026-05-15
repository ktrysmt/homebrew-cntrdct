class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.16/cntrdct-v0.2.0-rc.16-aarch64-apple-darwin.tar.gz"
      sha256 "48eef00c080a081b5a319e64539601a4cbba60b136c7439990eae578f664c73d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.16/cntrdct-v0.2.0-rc.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4bbfa8a683f08187712abe7b3e8620616a5f134e8c85b160288951a22d18cfa"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.16/cntrdct-v0.2.0-rc.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14b89e053cd44587a115b8b39e2fcea1192ddcd0d1d0c511656cb48128dd4cae"
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
