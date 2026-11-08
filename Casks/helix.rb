cask "helix" do
  version "2026.11.0"
  sha256 "8b0c39127f42256f1851c80fd8414191859eee39e103f1dbe2fead8f392df549"

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
