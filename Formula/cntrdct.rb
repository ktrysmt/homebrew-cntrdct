class Cntrdct < Formula
  desc "Evidence-based contradiction linter for Rust and Python"
  homepage "https://github.com/ktrysmt/cntrdct"
  version "0.2.0-rc.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.21/cntrdct-v0.2.0-rc.21-aarch64-apple-darwin.tar.gz"
      sha256 "104f23eb336a2286956ad656b30f44e480e5279fc36fc06ccf67e85978d7b58e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.21/cntrdct-v0.2.0-rc.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df3978e3d1c79cfced3b70e1dbe9bd9e66fede755b9094765c57469666b4ba9d"
    end
    on_arm do
      url "https://github.com/ktrysmt/cntrdct/releases/download/v0.2.0-rc.21/cntrdct-v0.2.0-rc.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce37e8e34d9312019d457c6fb54b835c7af7d6ae4698fb05d35a8689629356ba"
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
