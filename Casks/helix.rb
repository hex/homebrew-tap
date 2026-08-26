cask "helix" do
  version "2026.8.0"
  sha256 "86dfafb80bc9e9c91f634428bed1a7283c4af24726eabb5e76280f7017d35b6c"

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
