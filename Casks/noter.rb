cask "noter" do
  version "2026.9.1"
  sha256 "6d2648da935a0229780026ea8cb779ad1ad53020a249c563384ed07f99a7b66d"

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
