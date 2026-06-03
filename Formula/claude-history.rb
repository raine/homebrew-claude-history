class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.65"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.65/claude-history-darwin-arm64.tar.gz"
    sha256 "be5cc563fd33024fab3e70c817561a3286e5ae481800f665cfeeb33134862cf5"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.65/claude-history-linux-amd64.tar.gz"
    sha256 "4cf55d0a47a299be75e0adbaa680536e807297309b32f4cc6a58b62204e9492c"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
