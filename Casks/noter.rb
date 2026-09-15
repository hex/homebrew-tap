cask "noter" do
  version "2026.9.3"
  sha256 "1cb5ad02c36dbc63fb6b5499cfc955233e7b46bb82870cb4624a4dd951788466"

  url "https://github.com/hex/Noter/releases/download/v#{version}/Noter-#{version}.dmg",
      verified: "github.com/hex/Noter/"
  name "Noter"
  desc "Sticky notes at the edge of your Mac screen"
  homepage "https://github.com/hex/Noter"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Noter.app"
  binary "#{appdir}/Noter.app/Contents/MacOS/Noter", target: "noter"

  zap trash: [
    "~/Library/Application Support/Noter",
    "~/Library/Mobile Documents/iCloud~com~hexul~noter",
    "~/Library/Preferences/com.hexul.noter.plist",
  ]
end
