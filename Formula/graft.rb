class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/arborist-sh/graft"
  url "https://github.com/arborist-sh/graft/releases/download/v0.5.4/graft-0.5.4-arm64-macos.tar.gz"
  sha256 "c24b7303e88fa062a5d92af65c2b03f97accda88e969fdf4dbb63fc15e923b67"
  version "0.5.4"
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
    assert_match "0.5.4", shell_output("#{bin}/graft --version")
  end
end
