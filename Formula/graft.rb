class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/arborist-sh/graft"
  url "https://github.com/arborist-sh/graft/releases/download/v0.5.6/graft-0.5.6-arm64-macos.tar.gz"
  sha256 "b92c6b36463f92a6e1f47f95c4f98b45a1756078ffa49de37f799f46fff0929f"
  version "0.5.6"
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
    assert_match "0.5.6", shell_output("#{bin}/graft --version")
  end
end
