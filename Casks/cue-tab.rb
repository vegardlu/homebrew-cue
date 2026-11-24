cask "cue-tab" do
  version "0.1.3"
  sha256 "7b25264f04405df9839704c92c5d8a2e0478683112c2d228f85f8e553b17092b"

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
