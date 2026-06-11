cask "graft-app" do
  version "0.1.3"
  sha256 "d927d92c0c71fb9067bfc3b7c2e2c4dd2c76ffb3de3b818005269ef9bfcb48a2"

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
