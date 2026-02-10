cask "helix" do
  version "2026.2.1"
  sha256 "16d564d08d6ef8d84021b4447e7c3737a84439b50188e441468d8f6560d9db6f"

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
