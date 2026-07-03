class ClaudeMonitor < Formula
  desc "TUI monitor for parallel Claude Code sessions on macOS"
  homepage "https://github.com/rotorrest/claude-monitor"
  url "https://github.com/rotorrest/claude-monitor/releases/download/v0.2.0/claude-monitor-0.2.0.tar.gz"
  sha256 "d4a82c53d0fd8ee9f9ca78d82256fa1a2a5b9a6915ab1f3cd08520a132b7437d"
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
