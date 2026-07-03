class ClaudeMonitor < Formula
  desc "TUI monitor for parallel Claude Code sessions on macOS"
  homepage "https://github.com/rotorrest/claude-monitor"
  url "https://github.com/rotorrest/claude-monitor/releases/download/v0.5.3/claude-monitor-0.5.3.tar.gz"
  sha256 "99673c790308a7a61d33742c79e223fe3395f6ed67dcdb3383ce57b1498b72ac"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claudios"
    bin.install "claude-notify"
    bin.install_symlink bin/"claudios" => "claude-monitor"
    bin.install_symlink bin/"claudios" => "claudes"
  end

  def caveats
    <<~EOS
      claude-monitor usa el python3 del sistema (Command Line Tools de Xcode).
      Para notificaciones con clic-para-saltar: brew install terminal-notifier
      Hooks de Claude Code: https://github.com/rotorrest/claude-monitor#notifications
    EOS
  end

  test do
    assert_match "claudios v", shell_output("#{bin}/claudios --version")
  end
end
