cask "noter" do
  version "2026.9.2"
  sha256 "f8a4c3e18808535380103598fbd3176167373a2ef17af292d633a3d68d8d70a1"

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
