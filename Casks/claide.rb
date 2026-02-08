# ABOUTME: Homebrew cask formula for installing Claide terminal emulator.
# ABOUTME: Auto-updated by CI on each GitHub Release.

cask "claide" do
  version "2026.2.1"
  sha256 "PLACEHOLDER"

  url "https://github.com/hex/Claide/releases/download/v#{version}/Claide-#{version}.dmg"
  name "Claide"
  desc "GPU-accelerated terminal emulator with Metal rendering"
  homepage "https://github.com/hex/Claide"

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
