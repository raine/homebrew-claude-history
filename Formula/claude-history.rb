class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.42/claude-history-darwin-arm64.tar.gz"
      sha256 "3342f1168d4b244d100b1d60659778c36a05f0dd0b306ccdae1bebe4bcc6acf2"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.42/claude-history-darwin-amd64.tar.gz"
      sha256 "bd12f1f10d0a3fcd0e347213e5639c5a8953649ca1b4a70b7494bfed7a30cf3d"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.42/claude-history-linux-amd64.tar.gz"
    sha256 "cf10bede6bee5c384620ecbdd36c427857e978678849e31acddcd92f0833c73e"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
