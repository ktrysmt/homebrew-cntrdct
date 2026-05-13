class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.14/cntrdct-v0.2.0-rc.14-aarch64-apple-darwin.tar.gz"
      sha256 "9003e40097fcebc7cb4e6d1eb657db7d3a5974974dcfdf4c8de8fb5e334d61ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.14/cntrdct-v0.2.0-rc.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4df403892115bcc61fdb5997df13281253bc6a3175ea3bcbd9b35dc7f0af096"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.14/cntrdct-v0.2.0-rc.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abb04d330a68318339a429c7ad902a99904b3326b661ef5b3bfa0ca4e61840e9"
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
