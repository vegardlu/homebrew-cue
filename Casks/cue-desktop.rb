cask "cue-desktop" do
  version "0.4.1"
  sha256 "3afd47aedefe45061581c6bd2929a9808ecc4996f742a24ed3ec6391784b3ace"

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
