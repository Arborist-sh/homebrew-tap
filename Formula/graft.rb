class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/arborist-sh/graft"
  url "https://github.com/arborist-sh/graft/releases/download/v0.5.5/graft-0.5.5-arm64-macos.tar.gz"
  sha256 "e449c3c38088993d6857b6bbe3279c7ec46b6c1dcf8464eec5cca33bf711329b"
  version "0.5.5"
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
    assert_match "0.5.5", shell_output("#{bin}/graft --version")
  end
end
