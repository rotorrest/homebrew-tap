class ClaudeMonitor < Formula
  desc "TUI monitor for parallel Claude Code sessions on macOS"
  homepage "https://github.com/rotorrest/claude-monitor"
  url "https://github.com/rotorrest/claude-monitor/releases/download/v0.3.0/claude-monitor-0.3.0.tar.gz"
  sha256 "66873c1a700c209efcaebc5191531b48c579f6f498e5f108aeaf724b80433ae7"
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
