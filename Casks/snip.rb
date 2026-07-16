cask "snip" do
  version "2026.7.1"
  sha256 "264998eeff9399c69667086afef020403879960658cdece29e1bcf9be323a799"

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
