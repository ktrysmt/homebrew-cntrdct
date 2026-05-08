class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.1/cntrdct-v0.2.0-rc.1-aarch64-apple-darwin.tar.gz"
      sha256 "0912eb0a4298840d91911494d355da8d4ee064146e3b395cc6f1aecc8956dc93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.1/cntrdct-v0.2.0-rc.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ff6232c1cf7253d38a71676214347055c4aab6068dc88b1f70a2ba84fad134d"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.1/cntrdct-v0.2.0-rc.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "390b91c025e7bdf5f890d4320b9f08a099e01fb8c2b946436106c65132ba7d23"
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
