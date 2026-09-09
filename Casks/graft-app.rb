cask "graft-app" do
  version "0.5.6"
  sha256 "22ad722e3097cd3fc0ee6e6c7c4c6956e402a9e82a5dfa704d7db0fcc21ccaad"

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
