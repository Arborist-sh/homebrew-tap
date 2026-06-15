cask "graft-app" do
  version "0.5.0"
  sha256 "1960d6f2db9d913085b4ab46a32596215c2f5ef4bc3626dc74e7750b04aaeeb0"

  url "https://github.com/briancorbin/graft/releases/download/v#{version}/Graft-#{version}.zip"
  name "Graft"
  desc "Desktop app for Graft ephemeral GitHub Actions runners + Tart dev/CI images"
  homepage "https://github.com/briancorbin/graft"

  depends_on macos: ">= :sonoma"
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "briancorbin/tap/graft"

  app "Graft.app"

  zap trash: "~/.graft"
end
