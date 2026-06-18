class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/arborist-sh/graft"
  url "https://github.com/arborist-sh/graft/releases/download/v0.5.3/graft-0.5.3-arm64-macos.tar.gz"
  sha256 "1e11f4a97ac91ec62d00b9820d240ad5115e33430764d944ea04792fa0a3b1c9"
  version "0.5.3"
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
    assert_match "0.5.3", shell_output("#{bin}/graft --version")
  end
end
