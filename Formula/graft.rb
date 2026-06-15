class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.5.0/graft-0.5.0-arm64-macos.tar.gz"
  sha256 "475b87dee5a73e2e0c91d54d3a9bf4c93380ce560e53fcc4360716712233be9c"
  version "0.5.0"
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
    assert_match "0.5.0", shell_output("#{bin}/graft --version")
  end
end
