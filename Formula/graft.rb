class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.4.0/graft-0.4.0-arm64-macos.tar.gz"
  sha256 "b4baa52c2c0db96e8661b907112299010e8c94c553c3b9d1229cf85319c29c7e"
  version "0.4.0"
  license "MIT"

  # Apple Silicon only — Tart requires it, and so does the 2-macOS-VM model.
  depends_on arch: :arm64
  depends_on :macos
  # Graft drives the `tart` CLI; pull it in automatically.
  depends_on "cirruslabs/cli/tart"

  def install
    bin.install "graft"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/graft --version")
  end
end
