class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.12/cntrdct-v0.2.0-rc.12-aarch64-apple-darwin.tar.gz"
      sha256 "0f6fafd4f5f21f69d507786d5075c54fceb7e378629ee347ec459a45f1d03274"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.12/cntrdct-v0.2.0-rc.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "700affea4f482b46553ca08756705223b0d1fcfac439834f446922012ebf8748"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.12/cntrdct-v0.2.0-rc.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27ac528bf33ae53b4cc98ca1b2365fd90e72591265fbbc435a109869bbcca4d3"
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
