cask "graft-app" do
  version "0.4.0"
  sha256 "460dc34cd1682d4c407590f7549727137f8070a0ab41d94efe86af9bcac0e1eb"

  url "https://github.com/briancorbin/graft/releases/download/v#{version}/Graft-#{version}.zip"
  name "Graft"
  desc "Menu-bar companion for Graft ephemeral GitHub Actions runners"
  homepage "https://github.com/briancorbin/graft"

  depends_on macos: ">= :sonoma"
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "briancorbin/tap/graft"

  app "Graft.app"

  zap trash: "~/.graft"
end
