# ABOUTME: Homebrew formula for Badger, a CLI tool that adds labels to app icons.
# ABOUTME: Multi-platform binary distribution (macOS Intel/ARM, Linux).

class Badger < Formula
  version "2022.12.6"
  desc "Command-line tool that adds labels to your app icon"
  homepage "https://github.com/hex/Badger"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hex/badger/releases/download/v2022.12.6/badger-osx-x64.zip"
      sha256 "245f961cbaf05fc47dba0947ba381da45cce81d5e1971f548f4091012442c90b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/hex/badger/releases/download/v2022.12.6/badger-osx-arm64.zip"
      sha256 "15ce2b8803e56c3a90c699e2eddd0beb6ce808fb2cee22705331aa425a7f3284"
    end
  end

  on_linux do
    url "https://github.com/hex/badger/releases/download/v2022.12.6/badger-linux-x64.zip"
    sha256 "db1fe267b03560a44d5c7b212ef9627373d7d810e133edd725145cc423855b93"
  end

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/badger", "--version"
  end
end
