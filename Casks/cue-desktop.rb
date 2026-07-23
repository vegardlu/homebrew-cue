cask "cue-desktop" do
  version "0.6.0"
  sha256 "013403c297bc7d3e0d46a1930babb2ead5549491ba6b31ad6f588a8c800e2d8c"

  url "https://github.com/vegardlu/homebrew-cue/releases/download/cue-macos-v#{version}/Cue-#{version}.dmg",
      verified: "github.com/vegardlu/homebrew-cue/"
  name "Cue"
  desc "Coordinate events with your group — native Mac app"
  homepage "https://getcue.net"

  livecheck do
    url "https://vegardlu.github.io/homebrew-cue/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Cue.app"

  zap trash: [
    "~/Library/Application Support/cc.lundeberg.cue-macos",
    "~/Library/Caches/cc.lundeberg.cue-macos",
    "~/Library/HTTPStorages/cc.lundeberg.cue-macos",
    "~/Library/Preferences/cc.lundeberg.cue-macos.plist",
    "~/Library/Saved Application State/cc.lundeberg.cue-macos.savedState",
  ]
end
