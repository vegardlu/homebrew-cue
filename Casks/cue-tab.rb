cask "cue-tab" do
  version "0.1.0"
  sha256 "8fefc90d669501fc0c12f3a02cd52e0be2c2ecf522793a2fbd6fdae96f0059ab"

  url "https://github.com/vegardlu/cue-tab-releases/releases/download/v#{version}/CueTab-#{version}.dmg"
  name "Cue Tab"
  desc "Window-aware Command-Tab switcher"
  homepage "https://github.com/vegardlu/cue-tab-releases"

  livecheck do
    url "https://vegardlu.github.io/cue-tab-releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Cue Tab.app"

  uninstall quit: "cc.lundeberg.cue-tab"

  zap trash: [
    "~/Library/Caches/cc.lundeberg.cue-tab",
    "~/Library/HTTPStorages/cc.lundeberg.cue-tab",
    "~/Library/Preferences/cc.lundeberg.cue-tab.plist",
  ]
end
