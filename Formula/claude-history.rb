class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.22/claude-history-darwin-arm64.tar.gz"
      sha256 "c4e2d88a14bec082f0956e68b82ffeecd63c45c5b91ce7a5254f3f0a26956bbb"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.22/claude-history-darwin-amd64.tar.gz"
      sha256 "a809e93607b14b61005aca246ca6594054e01e7633d6f22f48b1a1633a268cc0"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.22/claude-history-linux-amd64.tar.gz"
    sha256 "0fb8af0ef47617d37a0377a6361433c0ac447350e631b41c1c8075c6937520cf"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
