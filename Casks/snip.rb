cask "snip" do
  version "2026.7.3"
  sha256 "eb6eadd133faa377835d484e7092667360312edf054fd165351a022a1d8768c2"

  url "https://github.com/hex/Snip/releases/download/v#{version}/Snip-#{version}.dmg",
      verified: "github.com/hex/Snip/"
  name "Snip"
  desc "Radial snippet menu for the macOS menu bar"
  homepage "https://snip.hexul.com"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Snip.app"

  zap trash: [
    "~/Library/Application Support/Snip",
    "~/Library/Preferences/ai.symbiotica.Snip.plist",
  ]
end
