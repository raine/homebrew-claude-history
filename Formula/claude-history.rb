class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.41/claude-history-darwin-arm64.tar.gz"
      sha256 "95f06d96b6e301992bd463fd990829483642d5ff6bd804d7ddb680941a582a26"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.41/claude-history-darwin-amd64.tar.gz"
      sha256 "fcaf3dbd08fec5bb95aa123edcbb261019a76cafc942a990cac4167bf8bb3236"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.41/claude-history-linux-amd64.tar.gz"
    sha256 "36963395a6dd122ca66e9ee7afd8125320cc26bc4b67fabf90907cf9b13548a7"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
