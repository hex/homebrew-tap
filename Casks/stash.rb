cask "stash" do
  version "2026.7.0"
  sha256 "91bf2889fa7d774f973594a29cd354d6c6854bf89fd493dfa5e45daba08f5af4"

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
