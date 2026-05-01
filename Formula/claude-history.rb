class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.54"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.54/claude-history-darwin-arm64.tar.gz"
      sha256 "85ed257681de748cb627967102f5833c52e126dff8b6e2df5969a30c19daff1e"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.54/claude-history-darwin-amd64.tar.gz"
      sha256 "9820665458fd44ab51931d0a678b08bf8bde02803ba4ea144c5578309f87eeab"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.54/claude-history-linux-amd64.tar.gz"
    sha256 "72a46ac58ec017bf50abac658e44d4886229e5bc1dbe00b89c63f3064f7d2ec5"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
