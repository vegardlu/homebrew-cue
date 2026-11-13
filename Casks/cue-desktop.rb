cask "cue-desktop" do
  version "0.12.4"
  sha256 "16e12b63495ba4711610fc7a20112de85a2d539c0e77033795ac4679faf84f11"

  url "https://github.com/vegardlu/homebrew-cue/releases/download/cue-macos-v#{version}/Cue-#{version}.dmg"
  name "Cue"
  desc "Coordinate events with your group — native Mac app"
  homepage "https://getcue.net"

  livecheck do
    url "https://vegardlu.github.io/homebrew-cue/appcast.xml"
    strategy :sparkle, &:short_version
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
