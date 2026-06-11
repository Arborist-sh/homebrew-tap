class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.2/graft-0.1.2-arm64-macos.tar.gz"
  sha256 "a3864d9d514b0dc7ffd6166eb965ed7f88438539072249db41af8887e2a41ae1"
  version "0.1.2"
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
    assert_match "0.1.2", shell_output("#{bin}/graft --version")
  end
end
