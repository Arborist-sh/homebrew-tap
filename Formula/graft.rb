class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.3.0/graft-0.3.0-arm64-macos.tar.gz"
  sha256 "8ae92883fc6b1b515b4679b6ca75f0de8cacd44e23b9e7375d60727e9b9b6d34"
  version "0.3.0"
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
    assert_match "0.3.0", shell_output("#{bin}/graft --version")
  end
end
