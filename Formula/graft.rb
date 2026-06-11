class Graft < Formula
  desc "Ephemeral GitHub Actions runners on Tart VMs"
  homepage "https://github.com/briancorbin/graft"
  url "https://github.com/briancorbin/graft/releases/download/v0.1.4/graft-0.1.4-arm64-macos.tar.gz"
  sha256 "b7f8d8b677addef8c88c2a5168c06f35f6d83f97cbaba572ada80f32739f52bb"
  version "0.1.4"
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
    assert_match "0.1.4", shell_output("#{bin}/graft --version")
  end
end
