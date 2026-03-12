class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.36/claude-history-darwin-arm64.tar.gz"
      sha256 "05c8d177b25f8072a293a1ae9311904d176e07d8709351902562e7792b4a14a4"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.36/claude-history-darwin-amd64.tar.gz"
      sha256 "40ba594e17e685272f7c8ef20de3ea025ae86b533e872bd298b61ae2adce7318"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.36/claude-history-linux-amd64.tar.gz"
    sha256 "ba8283fe1b10c86510e3f40398b3a0156960111bcabbc70316b493d06789e5b0"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
