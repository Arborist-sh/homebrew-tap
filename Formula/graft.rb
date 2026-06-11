class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.0/graft-0.1.0-arm64-macos.tar.gz"
  sha256 "ae1bf3e19c10875868f30b101e315ff1781e5ffd18dbf759ecfd71f0c211ce48"
  version "0.1.0"
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
    assert_match "0.1.0", shell_output("#{bin}/graft --version")
  end
end
