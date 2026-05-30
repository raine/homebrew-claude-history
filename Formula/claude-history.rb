class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.64"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.64/claude-history-darwin-arm64.tar.gz"
    sha256 "69f027a59db32202da53d5804cbe152ae2bd1941c6e15ff6f5f177eeda3b0c42"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.64/claude-history-linux-amd64.tar.gz"
    sha256 "fd362b4d4c677a695b96e920d365c263c9e2f66c077299d93343089699722e95"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
