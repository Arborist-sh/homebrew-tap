cask "graft" do
  version "0.1.1"
  sha256 "a2129833dda91aeaf3456a2bcffd210fab6f5988fb05375381aa1b69da62c10a"

  url "https://github.com/briancorbin/graft/releases/download/v#{version}/GraftBar-#{version}.zip"
  name "Graft Bar"
  desc "Menu-bar companion for Graft ephemeral GitHub Actions runners"
  homepage "https://github.com/briancorbin/graft"

  depends_on macos: ">= :sonoma"
  # The menu-bar app drives the graft CLI — install it too.
  depends_on formula: "briancorbin/tap/graft"

  app "GraftBar.app"

  zap trash: "~/.graft"
end
