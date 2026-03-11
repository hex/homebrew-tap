# ABOUTME: Homebrew formula for Badger, a CLI tool that adds labels to app icons.
# ABOUTME: Multi-platform binary distribution (macOS Intel/ARM, Linux).

class Badger < Formula
  version "2026.3.1"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/badger"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2026.3.1/badger-darwin-amd64.zip"
      sha256 "5ce7d007936daeaeb4393a579d5850c4fbb009296c79c2a6b162368c38e8531c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2026.3.1/badger-darwin-arm64.zip"
      sha256 "137d477369261a524d7e7a9c1fd37229cb8ab34fb557477bcd3a860ae22e84b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2026.3.1/badger-linux-amd64.zip"
      sha256 "5d1292ddcec8b8a03d7575fa8305e2aa6678e40f8e7bfa209091c8399514826d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2026.3.1/badger-linux-arm64.zip"
      sha256 "c9403202bc37d570e213b3967946f1041675ddd7bd9826a2e326cddbbdd16bf2"
    end
  end

  def install
    bin.install "badger"
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
