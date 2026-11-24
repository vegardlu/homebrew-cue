cask "cue-tab" do
  version "0.1.2"
  sha256 "ffff308d4ebe4d80a16b3b5dda4db809bd328a2cf1844ee9ce9204650eac8eda"

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
