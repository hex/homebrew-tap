cask "helix" do
  version "2026.11.1"
  sha256 "e2ca9f4bd53a7201daa29370b744e8c1db00f65b8df494425d4b3ec2c30e0889"

  url "https://github.com/hex/Helix/releases/download/v#{version}/Helix-#{version}.dmg"
  name "Helix"
  desc "Menu bar app for managing mutagen file sync sessions"
  homepage "https://helix.hexul.com/"

  depends_on formula: "mutagen"
  depends_on macos: :sonoma

  app "Helix.app"

  zap trash: [
    "~/Library/Application Support/com.hexul.Helix",
    "~/Library/Preferences/com.hexul.Helix.plist",
  ]
end
