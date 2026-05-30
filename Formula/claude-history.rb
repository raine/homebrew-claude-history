class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.63"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.63/claude-history-darwin-arm64.tar.gz"
    sha256 "3e2b9d141ee895a79b9b58fe907dbbc094a66b0e479b135cecb797157c5fa2a1"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.63/claude-history-linux-amd64.tar.gz"
    sha256 "fdfae7f386b6a804ca577e51d90858ed1c5074adc3c1b382147483b8ee231554"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
