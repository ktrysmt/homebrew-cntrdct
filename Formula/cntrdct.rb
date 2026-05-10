class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.5/cntrdct-v0.2.0-rc.5-aarch64-apple-darwin.tar.gz"
      sha256 "3f48bcb6c8b9d7eeb6d849d94d6259f32cfcbc46d8e7440bb45e5025837cf432"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.5/cntrdct-v0.2.0-rc.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86778de36b3f6d117db8f2405231704e99670166f7613b9014e498c6fb322880"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.5/cntrdct-v0.2.0-rc.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1483e79fd3afea57ca62ebe58c1f7d041482ee8804ce395dcf56eb381e2fb6c4"
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
