class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.18/claude-history-darwin-arm64.tar.gz"
      sha256 "f50f33cb9194acd64b0f161e6664685527654ab8aee1c30931d5fa9d73fd41c3"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.18/claude-history-darwin-amd64.tar.gz"
      sha256 "beb01fd00cee36484ec20daeee99af8f479184e8b123ee66493721d7a856ee57"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.18/claude-history-linux-amd64.tar.gz"
    sha256 "c3ccd4d61d33b3fe763f1600ad63748ee451c6bc4eb44d8486fa8e2a8b1f794b"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
