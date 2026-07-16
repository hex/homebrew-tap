cask "snip" do
  version "2026.7.2"
  sha256 "a439a0e4b7ee645756eb851b0ddceb08b7482a24df621fbf3a08e700f00df175"

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
