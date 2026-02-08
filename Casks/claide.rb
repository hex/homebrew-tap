# ABOUTME: Homebrew cask formula for installing Claide terminal emulator.
# ABOUTME: Auto-updated by CI on each GitHub Release.

cask "claide" do
  version "2026.2.5"
  sha256 "9f61eeb8e1556d3d8d9e634037c80b3835d7c6ae35405f824c187fc356c070ce"

  url "https://github.com/hex/Claide/releases/download/v#{version}/Claide-#{version}.dmg"
  name "Claide"
  desc "GPU-accelerated terminal emulator with Metal rendering"
  homepage "https://claide.hexul.com"

  depends_on macos: ">= :sonoma"

  app "Claide.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Preferences/com.hexul.claide.plist",
    "~/Library/Saved Application State/com.hexul.claide.savedState",
  ]
end
