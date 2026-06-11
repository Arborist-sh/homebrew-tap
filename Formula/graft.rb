class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.5/graft-0.1.5-arm64-macos.tar.gz"
  sha256 "0b6d919cc6dabd74f8dbe2e26ad0992df515e5ee5dce96784555533419abbaff"
  version "0.1.5"
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
    assert_match "0.1.5", shell_output("#{bin}/graft --version")
  end
end
