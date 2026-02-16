# ABOUTME: Homebrew cask formula for installing Claide terminal emulator.
# ABOUTME: Auto-updated by CI on each GitHub Release.

cask "claide" do
  version "2026.2.2"
  sha256 "b06c7b4bea39982e1cdeb55ce9235f4d20b3d280a14c3b3325575ad3b1284968"

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
