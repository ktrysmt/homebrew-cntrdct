class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.30/cntrdct-v0.2.0-rc.30-aarch64-apple-darwin.tar.gz"
      sha256 "4b2cb89019b188f019dd555c92777358b01b81d6b6a1c3ce3d78031419850aef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.30/cntrdct-v0.2.0-rc.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8561938a9dbd09e967560d1f4445b0c3dc236367bf0ce220e07aaa5fa06c8dff"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.30/cntrdct-v0.2.0-rc.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "629f1539ae42abde6522b9b9fc4d38d8874a59c4ad0ffeab4c368f8f733cd821"
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
