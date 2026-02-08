cask "stash" do
  version "2026.2.0"
  sha256 "df39e697421f2e59932db863d6e2049bd8ba87af59adecb07221c75f0e8c5646"

  url "https://github.com/hex/Stash/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Lightweight macOS clipboard history manager"
  homepage "https://stash.hexul.com"

  depends_on macos: ">= :sonoma"

  app "Stash.app"

  zap trash: [
    "~/Library/Application Support/com.hexul.Stash",
    "~/Library/Preferences/com.hexul.Stash.plist",
  ]
end
