cask "snip" do
  version "2026.7.0"
  sha256 "2e55a80feafb659f3f456e8e5f63e654cb464af2c01e8d24511eba84a321e0db"

  url "https://github.com/hex/Snip/releases/download/v#{version}/Snip-#{version}.zip",
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
