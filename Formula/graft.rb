class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.7/graft-0.1.7-arm64-macos.tar.gz"
  sha256 "26a1d64e3d0f866c63507f8af182e458581f5ea4d2750b3a8d5f092e90b74f16"
  version "0.1.7"
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
    assert_match "0.1.7", shell_output("#{bin}/graft --version")
  end
end
