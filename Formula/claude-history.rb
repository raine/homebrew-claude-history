class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.14/claude-history-darwin-arm64.tar.gz"
      sha256 "498985b1326991f99973a3ea853f3ded35fd301e373f4460abe75b8b00f62990"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.14/claude-history-darwin-amd64.tar.gz"
      sha256 "cb68edeadfce8a77316e04a0677f3f6bc093a959428906497f616c5e9e2c8b8e"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.14/claude-history-linux-amd64.tar.gz"
    sha256 "9642390d2d806836118f6ac7028dcc528536a9908c2a147309e9ca6cdfe53a30"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
