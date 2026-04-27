cask "stash" do
  version "2026.4.1"
  sha256 "6b442ab3e929ef40f4609b6b5fc1f09305a28412b5042d4f31c9aa85095d266c"

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
