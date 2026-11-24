cask "cue-tab" do
  version "0.1.1"
  sha256 "53541395e3766ae6c9fb308edec0208e7485a728e6eae590feed8b9e41c18fa7"

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
