# ABOUTME: Homebrew formula for iterm2-dimmer, dims TASKMASTER output in iTerm2.
# ABOUTME: HEAD-only until a versioned release is tagged.

class Iterm2Dimmer < Formula
  desc "Dims TASKMASTER stop hook output in iTerm2"
  homepage "https://github.com/hex/iterm2-dimmer"
  head "https://github.com/hex/iterm2-dimmer.git", branch: "main"
  license "MIT"

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
