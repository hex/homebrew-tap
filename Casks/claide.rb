# ABOUTME: Homebrew cask formula for installing Claide terminal emulator.
# ABOUTME: Auto-updated by CI on each GitHub Release.

cask "claide" do
  version "2026.2.2"
  sha256 "3b42438fc684525d30c5c304c8c3e5c65665aa304d7f2cd96a5327b2a47f80b5"

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
