# ABOUTME: Homebrew formula for Badger, a CLI tool that adds labels to app icons.
# ABOUTME: Multi-platform binary distribution (macOS Intel/ARM, Linux).

class Badger < Formula
  version "2026.3.0"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/badger"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2026.3.0/badger-darwin-amd64.zip"
      sha256 "25bb707d28b24be10dcfdc5c2f8a33d56f6a9fbbc34a6a7b5514a849c7a2a4ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2026.3.0/badger-darwin-arm64.zip"
      sha256 "0515f20c63d8c07a4a8081d059a3c0956c1fdbc7feb2451119692e09a645c668"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2026.3.0/badger-linux-amd64.zip"
      sha256 "a8ab6630939936fbc6f0d123fbcc8ec3b98fb0ff86f4cef5fcdc452efbaa59ee"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2026.3.0/badger-linux-arm64.zip"
      sha256 "fd4733bf13e5bcfdbbbab3b2a77699b2b332b09a0d3f466bb543536bc10f1e54"
    end
  end

  def install
    bin.install "badger"
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
