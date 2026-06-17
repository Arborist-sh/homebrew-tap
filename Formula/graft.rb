class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/arborist-sh/graft"
  url "https://github.com/arborist-sh/graft/releases/download/v0.5.2/graft-0.5.2-arm64-macos.tar.gz"
  sha256 "796a4d2a62e6a796e692d98bfce4478f25ce0113726b39ca456a717d19a725f8"
  version "0.5.2"
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
    assert_match "0.5.2", shell_output("#{bin}/graft --version")
  end
end
