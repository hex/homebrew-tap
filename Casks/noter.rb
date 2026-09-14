cask "noter" do
  version "2026.9.0"
  sha256 "bb572056719277704f1c0fea28c7aa72122b1f62351fffa92c99450c2bae6524"

  url "https://github.com/hex/Noter/releases/download/v#{version}/Noter-#{version}.dmg",
      verified: "github.com/hex/Noter/"
  name "Noter"
  desc "Sticky notes at the edge of your Mac screen"
  homepage "https://github.com/hex/Noter"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Noter.app"

  zap trash: [
    "~/Library/Application Support/Noter",
    "~/Library/Preferences/com.hexul.noter.plist",
  ]
end
