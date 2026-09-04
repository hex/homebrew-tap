cask "stash" do
  version "2026.9.0"
  sha256 "febc66f0e1075fb1e969b026d9db9caf02460fd17e1bccccd18b100e0c6a4a59"

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
