cask "snip" do
  version "2026.9.1"
  sha256 "d9cef118b02040189eef513eb1fd45c9d4459011a4e1bb21f05f930b958d9350"

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
