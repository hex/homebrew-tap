cask "snip" do
  version "2026.7.1"
  sha256 "6034f484d9ca251358484390be95cb88b31e75eeba53fddf55718a834e1b6687"

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
