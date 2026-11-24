cask "cue-tab" do
  version "0.1.4"
  sha256 "2f6a4a4a87a960ff3c1b21b7b97e1a35332ab133950db9ea09245024182b3c21"

  url "https://github.com/vegardlu/cue-tab-releases/releases/download/v#{version}/CueTab-#{version}.dmg"
  name "Cue Tab"
  desc "Window-aware Command-Tab switcher"
  homepage "https://github.com/vegardlu/cue-tab-releases"

  livecheck do
    url "https://vegardlu.github.io/cue-tab-releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Cue Tab.app"

  uninstall quit: "cc.lundeberg.cue-tab"

  zap trash: [
    "~/Library/Caches/cc.lundeberg.cue-tab",
    "~/Library/HTTPStorages/cc.lundeberg.cue-tab",
    "~/Library/Preferences/cc.lundeberg.cue-tab.plist",
  ]
end
