class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.21/claude-history-darwin-arm64.tar.gz"
      sha256 "e51c2b13075621c5acf5894f86d231ec874a4e9b156a8e6484f879e42f1b36dd"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.21/claude-history-darwin-amd64.tar.gz"
      sha256 "c635d2f210bd68e8f33bf7687eacb5ae9868d394cea35d2cb7022f5d6f99757e"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.21/claude-history-linux-amd64.tar.gz"
    sha256 "ee1f6ceb82d37c30d2d2e23446279bb9ddfed790467d259657333d99acb9741f"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
