class Claudes < Formula
  desc "Monitor TUI de sesiones de Claude Code para macOS"
  homepage "https://github.com/rotorrest/claudes"
  url "https://github.com/rotorrest/claudes/releases/download/v0.1.0/claudes-0.1.0.tar.gz"
  sha256 "9aad61dadbce4ae390f089ef0256dcc0d38e8f19b6e0d4af12149969c76dbadd"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claudes"
    bin.install "claude-notify"
    bin.install_symlink bin/"claudes" => "claude-monitor"
  end

  def caveats
    <<~EOS
      claudes usa el python3 del sistema (Command Line Tools de Xcode).
      Para notificaciones con clic-para-saltar: brew install terminal-notifier
      Hooks de Claude Code: https://github.com/rotorrest/claudes#notificaciones
    EOS
  end

  test do
    assert_match "claudes v", shell_output("#{bin}/claudes --version")
  end
end
