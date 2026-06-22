cask "graft-app" do
  version "0.5.5"
  sha256 "1ad403d75cceac59cc0700db414ad04257ebc823d6bcb6096e5084d233d3c6a2"

  url "https://github.com/arborist-sh/graft/releases/download/v#{version}/Graft-#{version}.zip"
  name "Graft"
  desc "Desktop app for Graft ephemeral GitHub Actions runners + Tart dev/CI images"
  homepage "https://github.com/arborist-sh/graft"

  depends_on macos: :sonoma
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "arborist-sh/tap/graft"

  app "Graft.app"

  zap trash: "~/.graft"
end
