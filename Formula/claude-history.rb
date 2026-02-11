class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.24/claude-history-darwin-arm64.tar.gz"
      sha256 "baccd5bca065b4d145836735b4cd969ee8b2306d988975bb00c427fbf786cb74"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.24/claude-history-darwin-amd64.tar.gz"
      sha256 "aa469cd545af185b8a712a71b4d18834b9b678231882d69923c87833ca3e07c0"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.24/claude-history-linux-amd64.tar.gz"
    sha256 "ba580c7fcb0ca86b8c25b6ff48a461582ec96ea223cbc858ded5c313943014ae"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
