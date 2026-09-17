cask "noter" do
  version "2026.9.4"
  sha256 "aacc17bd65078b3981b8c0f71b41ed1572212c2a92a5848a5f9da3366a76c842"

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
