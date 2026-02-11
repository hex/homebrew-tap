cask "helix" do
  version "2026.2.2"
  sha256 "1c3495d312eac8cf56b9a1aa7ae76b44fbf1efb35f40ee1b2f0e04dfe9005a1e"

  url "https://github.com/hex/Helix/releases/download/v#{version}/Helix-#{version}.dmg"
  name "Helix"
  desc "Native macOS menu bar app for managing mutagen file sync sessions"
  homepage "https://helix.hexul.com"

  depends_on macos: ">= :sonoma"
  depends_on formula: "mutagen"

  app "Helix.app"

  zap trash: [
    "~/Library/Application Support/com.hexul.Helix",
    "~/Library/Preferences/com.hexul.Helix.plist",
  ]
end
