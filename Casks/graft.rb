cask "graft" do
  version "0.1.2"
  sha256 "6c3f0f14e8e48095f5c2904f34464d78bfc704c7fb03d00e815a7993e4c088ec"

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
