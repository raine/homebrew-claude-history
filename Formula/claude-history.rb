class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.33/claude-history-darwin-arm64.tar.gz"
      sha256 "57aea6f5ed6cce47169eb7de33d69c3f92cb6a4c81da876a52e28af88daa9357"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.33/claude-history-darwin-amd64.tar.gz"
      sha256 "1118e6ea05e8206b6ae987d32375441543cabc66485a47b268b9615bb27140ed"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.33/claude-history-linux-amd64.tar.gz"
    sha256 "7bd1fbbe13834591ffe3aaa8f6a62f5786677d5209e9485ba67780d1da3197bf"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
