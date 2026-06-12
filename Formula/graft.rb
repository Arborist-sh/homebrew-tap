class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.2.0/graft-0.2.0-arm64-macos.tar.gz"
  sha256 "c821637336ffe5e01979b3d486892ca57ca6977497b0f9520276aee31e307a37"
  version "0.2.0"
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
    assert_match "0.2.0", shell_output("#{bin}/graft --version")
  end
end
