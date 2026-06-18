cask "graft-app" do
  version "0.5.3"
  sha256 "388cd365ac749309f5e69d2218cc60016728269ed216598a53bc1481e2c99091"

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
