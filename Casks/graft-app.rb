cask "graft-app" do
  version "0.5.2"
  sha256 "d721777116f8817b14ec693f3f98139bfd0de02f50405e4e68547ac0d0a08a29"

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
