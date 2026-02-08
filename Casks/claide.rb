# ABOUTME: Homebrew cask formula for installing Claide terminal emulator.
# ABOUTME: Auto-updated by CI on each GitHub Release.

cask "claide" do
  version "2026.2.4"
  sha256 "f22b2bbebca398c8e61e2d0ec2fd912c02c01c2fc58478682277f7e96abd0be7"

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
