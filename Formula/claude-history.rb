class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.40/claude-history-darwin-arm64.tar.gz"
      sha256 "9e5323603a6d98d980798afa268d0d626c3f0e169af46a91c9b07b82c719c9b3"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.40/claude-history-darwin-amd64.tar.gz"
      sha256 "03cad4f21947d2d9a1dd770634b249ae8ae6236516df02f946a89efc33b1d4bc"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.40/claude-history-linux-amd64.tar.gz"
    sha256 "49a920a04dee1725e81655848a40764323916d87105dcd95755cc2c4b701fc71"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
