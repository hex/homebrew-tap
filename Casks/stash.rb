cask "stash" do
  version "2026.7.1"
  sha256 "56418b189384ecb6fd077320fe8334275e9c1b7af95df7f539d520e265d01197"

  url "https://github.com/hex/Stash/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Lightweight macOS clipboard history manager"
  homepage "https://stash.hexul.com"

  depends_on macos: ">= :sequoia"

  app "Stash.app"

  zap trash: [
    "~/Library/Application Support/com.hexul.Stash",
    "~/Library/Preferences/com.hexul.Stash.plist",
  ]
end
