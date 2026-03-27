class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.50/claude-history-darwin-arm64.tar.gz"
      sha256 "09c8f86ec78def25a1ef4a999186e5535b91d14f1792e463a4f156a0702efa2c"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.50/claude-history-darwin-amd64.tar.gz"
      sha256 "507b28aae0dd2eb7a1bd2f9cfac79e6b879ce46c724fdfb1f1e4438e76db18e2"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.50/claude-history-linux-amd64.tar.gz"
    sha256 "1203aa6dd40bdd3f30b6614ace3bd3efebe21231eca7d8e821315d42e69dce78"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
