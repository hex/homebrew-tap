cask "snip" do
  version "2026.7.1"
  sha256 "f5cd90f8c983ae36d282611c9ba2120b3659ae174acb62a8d3b25f1f566ba27c"

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
