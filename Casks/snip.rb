cask "snip" do
  version "2026.9.0"
  sha256 "2f1943c9ae27c46074f0feafc2331d1059a305c10a95e5cdea17306a41842c98"

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
