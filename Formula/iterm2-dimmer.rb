# ABOUTME: Homebrew formula for iterm2-dimmer, dims TASKMASTER output in iTerm2.
# ABOUTME: Update version, url, and sha256 when cutting a new release.

class Iterm2Dimmer < Formula
  version "2026.2.0"
  desc "Dims TASKMASTER stop hook output in iTerm2"
  homepage "https://github.com/hex/iterm2-dimmer"
  url "https://github.com/hex/iterm2-dimmer/archive/refs/tags/v2026.2.0.tar.gz"
  sha256 "6d0bf482376b7304a986f39b173c7087304941c45ecb088cc39d0747ca781e8e"
  license "MIT"
  head "https://github.com/hex/iterm2-dimmer.git", branch: "main"

  depends_on :macos

  def install
    libexec.install "src", "install.sh", "uninstall.sh", "build-its.sh", "requirements.txt"
    chmod 0755, libexec/"install.sh"
    chmod 0755, libexec/"uninstall.sh"
    chmod 0755, libexec/"build-its.sh"
    chmod 0755, libexec/"src/run.sh"

    (bin/"iterm2-dimmer").write <<~EOS
      #!/usr/bin/env bash
      # ABOUTME: CLI wrapper for iterm2-dimmer installed via Homebrew.
      # ABOUTME: Proxies commands to the scripts in libexec.
      LIBEXEC="#{libexec}"
      case "${1:-help}" in
        install)   exec "$LIBEXEC/install.sh" ;;
        uninstall) exec "$LIBEXEC/uninstall.sh" ;;
        on|off|daemon) exec "$LIBEXEC/src/run.sh" "$1" ;;
        build-its) exec "$LIBEXEC/build-its.sh" ;;
        *)
          echo "Usage: iterm2-dimmer <command>"
          echo ""
          echo "Commands:"
          echo "  install     Set up venv and symlink scripts into iTerm2"
          echo "  uninstall   Remove symlinks and optionally the venv"
          echo "  on          Apply dim triggers to all sessions"
          echo "  off         Remove dim triggers from all sessions"
          echo "  daemon      Apply triggers and watch for new sessions"
          echo "  build-its   Build .its archives for iTerm2 import"
          ;;
      esac
    EOS
    chmod 0755, bin/"iterm2-dimmer"
  end

  def caveats
    <<~EOS
      After installing, run:
        iterm2-dimmer install

      This creates a Python venv and symlinks the scripts into iTerm2.
      Restart iTerm2 to activate the AutoLaunch daemon.
    EOS
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/iterm2-dimmer help")
  end
end
